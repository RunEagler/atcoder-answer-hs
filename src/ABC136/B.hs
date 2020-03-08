module ABC136.B where

main = do
  n <- readLn
  print $ foldl (\acc x -> if odd $ length $ show x then acc + 1 else acc) 0 [1..n]