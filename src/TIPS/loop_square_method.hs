module TIPS.LOOP_SQUARE_METHOD where

import Data.Int (Int64)

p::Int64
p = 10^9 + 7

modPow::Int64->Int64->Int64
modPow a n | n == 1 = mod a p
           | mod n 2 == 1 = mod (a * modPow a (n-1)) p
           | otherwise = mod (t * t) p
                where t = modPow a (n `div` 2)

combination::Int64->Int64->Int64
combination n m = mod (x * (modPow y (p-2))) p
                    where x = foldl1 (\acc c -> mod (acc * c) p ) [(n-m+1)..n]
                          y = foldl1 (\acc c -> mod (acc * c) p ) [1..m]
                          
subMod::Int64->Int64->Int64
subMod x y
  | x < y     = x - y + p
  | otherwise = x - y

main = do
  [n, a, b] <- map read . words <$> getLine::IO[Int64]
  print $ ((modPow 2 n) - 1) `subMod` (combination n a) `subMod` (combination n b)


