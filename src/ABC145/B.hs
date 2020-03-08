module ABC145.B where
main = do
  n <- readLn
  s <- getLine
  putStrLn $ let len = n `div` 2 in if even n && take len s == drop len s then "Yes" else "No"