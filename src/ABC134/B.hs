module ABC134.B where

main = do
  [n,d] <- map read . words <$> getLine
  print $ ceiling (n / (2 * d + 1))