{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import ExportDeprecation007_A
import ExportDeprecation007_B
import Prelude hiding ( head )  -- to force head to be deprecated

f = head
