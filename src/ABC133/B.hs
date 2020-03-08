module ABC133.B where
import Control.Monad (replicateM)

pointLength::[Int] -> [Int] -> Float
pointLength xa xb = sqrt $ fromIntegral $ sum $ zipWith (\a b -> (a - b) ^ 2) xa xb

isInt::Float->Bool
isInt x = x == fromInteger (ceiling x)

main = do
  [n,d] <- map read . words <$> getLine
  xn <- replicateM n $ map read . words <$> getLine::IO[[Int]]
  print $ length [True | i <- [0..(n-1)],j <- [i..(n-1)], i /= j, isInt $ pointLength (xn !! i) (xn !! j)]