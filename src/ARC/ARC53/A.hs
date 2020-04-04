module ARC53.A where

main = do
  [h,w] <- map read . words <$> getLine
  print $ (w-1) * h + (h-1) * w