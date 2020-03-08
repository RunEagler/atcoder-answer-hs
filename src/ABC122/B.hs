module ABC122.B where

import Data.List (tails)
main = do
  s <- getLine
  print $ maximum $ map (length . takeWhile (`elem` "ATGC")) (tails s)