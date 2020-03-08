module ABC154.B where

main = do
  s <- getLine
  putStrLn $ foldl (\acc _ -> acc++"x") "" s