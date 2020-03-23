module ARC95.A where

import Data.List (sort)
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main = do
  n <- readLn
  xn <- getInts
  let sn = sort xn
  let upMedian = sn !! (div n 2)
  let downMedian = sn !! ((div n 2) - 1)
  mapM_ print $ map (\x -> if x < upMedian then upMedian else downMedian) xn
  