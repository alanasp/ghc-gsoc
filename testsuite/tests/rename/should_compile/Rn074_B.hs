module Rn074_B(
  {-# DEPRECATED "func2 export is deprecated" #-}
  func2, 
  {-# DEPRECATED "Rn073_C shall be imported directly" #-}
  module Rn074_C
) where

import Rn074_C


func2 :: Int
func2 = 42
