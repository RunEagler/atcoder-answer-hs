module ARC90.A where


main = do
  n <- readLn
  a1n <- map read . words <$> getLine
  a2n <- map read . words <$> getLine
  print $ maximum [sum(take i a1n) + sum(drop (i-1) a2n) | i <- [1..n]]