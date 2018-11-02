module ExportDeprecation009_A (
    module ExportDeprecation009_A,  -- Self export
    {-# DEPRECATED "Import B directly" #-}
    module ExportDeprecation009_B
  ) where
import ExportDeprecation009_B
