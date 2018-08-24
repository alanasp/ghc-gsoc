module ExportDeprecation006_C(
  {-# DEPRECATED "func3 export is deprecated" #-}
  func3,
  func_C
) where


func3 :: Int
func3 = 42

{-# DEPRECATED func_C "func_C is deprecated" #-}
func_C :: String
func_C = "ExportDeprecation006_C"
