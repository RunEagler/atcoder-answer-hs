module ABC89.C where

import Control.Monad (replicateM)
import Data.List (sort, group)

includeMarch::String->Bool
includeMarch s = elem (head s) "MARCH"


main = do
  n <- readLn
  sn <- replicateM n getLine
  print $ map length $ group . sort . map head $ filter includeMarch sn