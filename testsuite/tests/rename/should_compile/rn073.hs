{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import Rn073_B(funcRn073_C) --deprecated
import Rn073_C(funcRn073_C) --non-deprecated
import Rn073_A(funcRn073_C) --deprecated

main = funcRn073_C --no warning because non-deprecated import declaration exists
