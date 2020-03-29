module ARC.ARC46.A where

import qualified Data.Set as S

solve::Int->[Int]->Int
solve n (x:xs)| n == 0 = x - 1
              | (S.size . S.fromList $ show x) == 1 = solve (n-1) xs
              | otherwise = solve n xs

main = do
  n <- readLn
  print $ solve n [1..]