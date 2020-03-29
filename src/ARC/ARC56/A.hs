module ARC.ARC56.A where

main = do
  [a,b,k,l] <- map read . words <$> getLine
  print $ if k >= l && (a*l) > b then
    if (mod k l)*a > b then b * ((div k l)+1) else b * (div k l) + (mod k l)*a
    else if a * k > b then b else a * k