f::Int->Int
f n | n > 1 = 2 * f (div n 2) + 1
    | otherwise = 1

main = do
  h <- readLn
  print $ f h
  