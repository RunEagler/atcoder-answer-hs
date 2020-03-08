module ABC130.B where

--whileBound::Int->Int->[Int]->Int
--
--whileBound count threshold y@(x:xs) | count > threshold = 0
--                                    | length xs == 0 = 1
--                                    | otherwise = 1 + whileBound (count + x) threshold xs

main = do
  [n, x] <- map read . words <$> getLine::IO[Int]
  ln <- map read . words <$> getLine
  print $ length $ filter (<= x) $ scanl (+) 0 ln