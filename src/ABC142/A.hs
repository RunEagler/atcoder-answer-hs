

main = do
  n <- readLn
  print $ 1 - (fromIntegral (div n 2)) / (fromIntegral n)