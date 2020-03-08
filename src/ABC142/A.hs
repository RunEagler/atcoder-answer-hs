module ABC142.A where

main = do
  n <- readLn
  print $ 1 - (fromIntegral (div n 2)) / (fromIntegral n)