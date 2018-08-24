{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import ExportDeprecation006_B(func_C) --deprecated
import ExportDeprecation006_C(func_C) --deprecated at definition
import ExportDeprecation006_A(func_C) --deprecated

main = func_C --warning because deprecated at the defining module
