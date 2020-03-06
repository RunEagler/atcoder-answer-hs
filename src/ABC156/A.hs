module ABC156.A where

main = do
  [n, r] <- map read . words <$> getLine
  print $ if n >= 10 then r else r + 100 * (10 - n)