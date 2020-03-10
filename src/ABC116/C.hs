module ABC116.C where

main = do
  getLine
  hn <- map read . words <$> getLine
  print $ foldl (\ans (prev, next) -> if prev < next then ans+next-prev else ans) 0 $ zip (0:(init hn)) $ hn
  
  
  