


main = do
  [n,m] <- map read . words <$> getLine
  putStrLn $ if (n - m) == 0 then "Yes" else "No"