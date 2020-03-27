module ARC.ARC88.A where

solve::Int->Int->Int->Int
solve x y p | (x * 2^p) <= y = 1 + solve x y (p+1)
            | otherwise = 0
main = do
  [x,y] <- map read . words <$> getLine
  print $ solve x y 0