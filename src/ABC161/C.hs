module ABC161.C where

main = do
  [n,k] <- map read . words <$> getLine
  print $ if n > k then min (mod n k) (k - (mod n k)) else min n (k - n)