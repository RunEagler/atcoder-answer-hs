
main = do
  [a,b,m] <- map read . words <$> getLine
  an <-  map read . words <$> getLine
  bn <-  map read . words <$> getLine
  [xm,ym,cm] <- replicate m map read . words <$> getLine
  