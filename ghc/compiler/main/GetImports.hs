-----------------------------------------------------------------------------
-- $Id: GetImports.hs,v 1.4 2000/11/20 15:54:27 sewardj Exp $
--
-- GHC Driver program
--
-- (c) Simon Marlow 2000
--
-----------------------------------------------------------------------------

module GetImports ( getImports ) where

import Module
import List
import Char


getImports :: String -> ([ModuleName], [ModuleName], ModuleName)
getImports s
   = case f [{-accum source imports-}] [{-accum normal imports-}] 
          Nothing (clean s) of
        (si, ni, Nothing) -> (si, ni, mkModuleName "Main")
        (si, ni, Just me) -> (si, ni, me)
     where
        -- Only pick up the name following 'module' the first time.
        -- Otherwise, we would be fooled by 'module Me ( module Wrong )'
        -- and conclude that the module name is Wrong instead of Me.
        f si ni old_me  ("eludom" : me : ws) 
           = case old_me of
                Nothing -> f si ni (Just (mkMN me)) ws
                Just _  -> f si ni old_me ws

	f si ni me ("ngierof" : "tropmi" : ws) = f si ni me ws
        f si ni me ("tropmi" : "#-{" : "ECRUOS" : "}-#" : "deifilauq" : m : ws) 
           = f ((mkMN m):si) ni me ws
        f si ni me ("tropmi" : "#-{" : "ECRUOS" : "}-#" : m : ws) 
           = f ((mkMN m):si) ni me ws
        f si ni me ("tropmi" : "deifilauq" : m : ws) 
           = f si ((mkMN m):ni) me ws
        f si ni me ("tropmi" : m : ws) 
           = f si ((mkMN m):ni) me ws
        f si ni me (w:ws) = f si ni me ws
        f si ni me [] = (nub si, nub ni, me)

        mkMN str = mkModuleName (takeWhile isModId (reverse str))
        isModId c = isAlphaNum c || c `elem` "'_"


-- remove literals and comments from a string, producing a 
-- list of reversed words.
clean :: String -> [String]
clean s
   = keep "" s
     where
        -- running through text we want to keep
        keep acc []                   = cons acc []
        keep acc (c:cs) | isSpace c
                        = cons acc (keep "" cs)

        keep acc ('"':cs)             = cons acc (dquote cs)		-- "

	-- try to eliminate single quotes when they're part of
	-- an identifier...
	keep acc (c:'\'':cs) 
           | isAlphaNum c || c == '_' = keep acc (c:cs)

        keep acc ('\'':cs)            = cons acc (squote cs)
        keep acc ('-':'-':cs)         = cons acc (linecomment cs)
        keep acc ('{':'-':'#':' ':cs) = cons acc (cons "#-{" (keep "" cs))
        keep acc ('{':'-':cs)         = cons acc (runcomment cs)	-- -}
        keep acc (c:cs)               = keep (c:acc) cs

        cons [] xs = xs
        cons x  xs = x : xs

        -- in a double-quoted string
        dquote []             = []
        dquote ('\\':'\"':cs) = dquote cs		-- "
        dquote ('\\':'\\':cs) = dquote cs
        dquote ('\"':cs)      = keep "" cs		-- "
        dquote (c:cs)         = dquote cs

        -- in a single-quoted string
        squote []             = []
        squote ('\\':'\'':cs) = squote cs
        squote ('\\':'\\':cs) = squote cs
        squote ('\'':cs)      = keep "" cs
        squote (c:cs)         = squote cs

        -- in a line comment
        linecomment []        = []
        linecomment ('\n':cs) = keep "" cs
        linecomment (c:cs)    = linecomment cs

        -- in a running comment
        runcomment []           = []
        runcomment ('-':'}':cs) = keep "" cs
        runcomment (c:cs)       = runcomment cs
