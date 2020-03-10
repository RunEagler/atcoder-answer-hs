module ABC149.C where

answer::Int->Int->Int
answer x i | x == i = x
           | x `mod` i == 0 = answer (x+1) 2
           | otherwise = answer x (i+1)
main = do
  x <- readLn
  print $ answer x 2
