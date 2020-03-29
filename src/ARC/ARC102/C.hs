module ARC.ARC102.C where

main = do
  [n,k] <- map read . words <$> getLine::IO[Int]
  print $ (div n k)^3 + if (mod k 2) == 0 then (div (n+ div k 2)k)^3 else 0