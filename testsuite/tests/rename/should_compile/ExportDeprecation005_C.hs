module ExportDeprecation005_C(
  {-# DEPRECATED "func3 export is deprecated" #-}
  func3,
  func_C
) where


func3 :: Int
func3 = 42

func_C :: String
func_C = "ExportDeprecation005_C"
