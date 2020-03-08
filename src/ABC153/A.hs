module ABC153.A where


main = do
  [h, a] <- map read . words <$> getLine
  putStrLn $ show $ let result = h `div` a in if h == result * a then result else result + 1