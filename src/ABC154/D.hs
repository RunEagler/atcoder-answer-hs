
import Data.Function (on)

sn::Int->Int
sn n = n + 1

div' = (/) `on` fromIntegral

main = do
  [n, k] <- map read . words <$> getLine::IO[Int]
  pn <- map read . words <$> getLine
  let snn = scanl (+) 0 $ map sn pn
  print $ div' (maximum $ zipWith subtract snn (drop k snn)) 2