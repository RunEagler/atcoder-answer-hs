module ABC162.B where

import Data.Vector as V

main = do
  n <- readLn
  print $ V.sum $ V.filter (\x -> mod x 3 /= 0 && mod x 5 /= 0 ) $ V.fromList [1..n]
