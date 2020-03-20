module ABC100.C where


twoCount::Int->Int
twoCount n | mod n 2 == 0 = 1 + twoCount (div n 2)
           | otherwise = 0

main = do
  getLine
  an <- map read . words <$> getLine
  print $ sum $ map twoCount an
  