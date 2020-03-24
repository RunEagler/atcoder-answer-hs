module Panasonic2020.B where

solve::Int->Int->Int
solve h w | w == 1 || h == 1 = 1
          | otherwise = if (even s) then (div s 2) else (div (s+1) 2)
            where s = h * w

main = do
  [h,w] <- map read . words <$> getLine
  print $ solve h w