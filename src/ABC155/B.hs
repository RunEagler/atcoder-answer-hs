module ABC155.B where

main = do
  n <- readLn
  an <- map read . words <$> getLine
  print $ [x | x <- an, even x]