module Rn073_B(
  {-# DEPRECATED "func2 export is deprecated" #-}
  func2,
  {-# DEPRECATED "Rn073_C shall be imported directly" #-}
  module Rn073_C
) where

import Rn073_C


func2 :: Int
func2 = 42
