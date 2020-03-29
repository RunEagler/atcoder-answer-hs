module ARC.ARC44.A where

isAboutPrime::Int->Bool
isAboutPrime n | any (==n) [2,3,5] = True
               | n == 1 || (mod n 2) == 0 || (mod n 3) == 0 || (mod n 5) == 0 = False
               | otherwise = True

main = do
  n <- readLn
  putStrLn $ if isAboutPrime n then "Prime" else "Not Prime"