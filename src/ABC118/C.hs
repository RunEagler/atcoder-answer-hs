module ABC118.C where

main = do
  getLine
  an <- map read .words <$> getLine
  print $ foldl1 gcd an 