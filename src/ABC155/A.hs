module ABC155.A where

answer :: [String] -> String
answer [a,b,c] | a == b && b == c && a == c = "No"
               | a /= b && b /= c && a /= c = "No"
               | otherwise = "Yes"
main = do
  list <- words <$> getLine
  putStrLn $ answer list
