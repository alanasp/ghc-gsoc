{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import ExportDeprecation008_A
import ExportDeprecation008_B

-- func_C is deprecated at the defining module
-- and module ExportDeprecation008_B but not ExportDeprecation008_A, so we expect
-- only one warning

main = ExportDeprecation008_B.func_C

main2 = func_C
