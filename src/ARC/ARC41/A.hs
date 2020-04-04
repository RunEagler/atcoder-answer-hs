module ARC.ARC41.A where

main = do
  [x,y] <- map read . words <$> getLine
  k <- readLn
  print $ if y - k > 0 then x + k else x + y - (k - y)