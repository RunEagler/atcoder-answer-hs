module ABC158.B where

main = do
  [n,a,b] <- map read . words <$> getLine
  let loopCount = div n (a+b)
  let remaining = mod n (a+b)
  print $ (loopCount * a) + minimum [a,remaining]