module ABC151.B where

main = do
  [n,k,m] <- map read . words <$> getLine
  an <- map read. words <$> getLine
  let answer = (m*n) - sum(an)
  print $ case answer of
     answer | answer < 0 -> 0
            | answer > k -> -1
            | otherwise -> answer