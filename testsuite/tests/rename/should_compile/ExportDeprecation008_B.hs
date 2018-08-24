module ExportDeprecation008_B(
  {-# DEPRECATED "ExportDeprecation008_C shall be imported directly" #-}
  module ExportDeprecation008_C
) where

import ExportDeprecation008_C
