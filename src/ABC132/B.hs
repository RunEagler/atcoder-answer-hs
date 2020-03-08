module ABC132.B where

import Data.List (sort)
  
isSecond::[Int] -> Bool
isSecond pn = (pn !! 1) == ((sort pn) !! 1)

answer::[Int] -> Int
answer y@(x:xs) | length y < 3 = 0
                | otherwise = if isSecond (take 3 y) then 1 + answer xs else answer xs

main = do
  getLine
  pn <- map read . words <$> getLine::IO[Int]
  print $ answer pn
