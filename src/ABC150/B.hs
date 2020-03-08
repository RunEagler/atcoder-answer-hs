module ABC150.B where

matchCount::String -> Int
matchCount s | length s < 3 = 0
             | threeHead == "ABC" = 1 + matchCount (tail s)
             | otherwise = matchCount $ tail s
             where threeHead = take 3 s

main = do
  getLine
  s <- getLine
  print $ matchCount s