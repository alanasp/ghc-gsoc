{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import ExportDeprecation005_B(func_C) --deprecated
import ExportDeprecation005_C(func_C) --non-deprecated
import ExportDeprecation005_A(func_C) --deprecated

main = func_C --no warning because non-deprecated import declaration exists
