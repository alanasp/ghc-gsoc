{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

module Main where
import ExportDeprecation010_A -- b from here is deprecated
import ExportDeprecation010_B -- b from here is NOT deprecated
main = print b -- No warning
