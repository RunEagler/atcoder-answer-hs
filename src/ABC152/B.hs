module ABC152.B where

repeatN::Int->Int->String
repeatN a b = concatMap show . take b $ repeat a

main = do
  [a,b] <- map read . words <$> getLine
  putStrLn $ if a > b then repeatN b a else repeatN a b