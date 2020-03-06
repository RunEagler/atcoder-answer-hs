module ABC51.A where

main = do
  line <- getLine
  putStrLn $ map (\x -> if x == ',' then ' ' else x) line