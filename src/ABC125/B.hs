module ABC125.B where

main = do
  getLine
  vn <- map read . words <$> getLine
  cn <- map read . words <$> getLine
  print $ sum $ filter (>0) . map (\(a,b) -> a-b) $ zip vn cn