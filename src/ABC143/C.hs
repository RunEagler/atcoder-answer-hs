module ABC143.C where

import Data.List (group)

main = do
  getLine
  s <- getLine
  print $ length $ map head $ (group s)