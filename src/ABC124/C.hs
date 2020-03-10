module ABC124.C where

diffCount::String->String->Int
diffCount a b = length $ filter id $ zipWith (/=) a b

main = do
  s <- getLine
  let len = length s
  let ptn1 = take len (cycle "10")
  let ptn2 = take len (cycle "01")
  print $ min (diffCount s ptn1) (diffCount s ptn2)
        