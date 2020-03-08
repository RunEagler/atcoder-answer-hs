module ABC147.B where

main = do
  s <- getLine
  print $ div (foldl (flip ((+) . fromEnum)) 0 (zipWith (/=) s (reverse s))) 2