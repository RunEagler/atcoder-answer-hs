module ARC94.A where

import Data.List (sort)

adjust::Int->Int->Int->(Int,Int,Int,Int)
adjust a b c | even a && even b && odd c = (a+1,b+1,c,1)
           | even a && odd b && even c = (a+1,b,c+1,1)
           | odd a && even b && even c = (a,b+1,c+1,1)
           | odd a && odd b && even c = (a+1,b+1,c,1)
           | odd a && even b && odd c = (a+1,b,c+1,1)
           | even a && odd b && odd c = (a,b+1,c+1,1)
           | otherwise = (a,b,c,0)
main = do
  [a,b,c] <- map read . words <$> getLine
  let (a',b',c',d) = adjust a b c
  let list = reverse $ sort [a',b',c']
  print $ let m = maximum list in (sum . map (\x -> div (m-x) 2) $ tail list) + d 