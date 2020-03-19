module ABC133.C where


main = do
  [l,r] <- map read . words <$> getLine
  let modList = takeWhile (/=0) $ map (\(x,y) -> mod (x*y) 2019) [(i,j)| i <- [l..r],j <- [(i+1)..r]]
  print $ let diff = r - l in if length modList == (div (diff * (diff + 1)) 2) then minimum modList else 0