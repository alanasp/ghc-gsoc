{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import ExportDeprecation001_A

foo = func1
