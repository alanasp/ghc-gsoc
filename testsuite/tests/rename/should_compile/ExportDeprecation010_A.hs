module ExportDeprecation010_A (
    -- No self export
    {-# DEPRECATED "Import B directly" #-}
    module ExportDeprecation010_B
  ) where
import ExportDeprecation010_B
