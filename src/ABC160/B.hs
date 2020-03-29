module ABC160.B where

main = do
  x <- readLn
  print $ (div x 500) * 1000 + (div (mod x 500) 5) * 5