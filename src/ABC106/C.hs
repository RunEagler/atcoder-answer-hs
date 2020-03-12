module ABC106.C where

main = do
  s <- getLine
  k <- read <$> getLine
  putChar $ foldl (\acc (s, index) -> if s == '1' || acc /= '1' then acc else s) '1' $ zip s [1..k]

