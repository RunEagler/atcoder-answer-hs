module ARC.ARC99.A where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Data.Function (on)

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

div'::Int->Int->Double
div' = (/) `on` fromIntegral

main = do
  [n,k] <- getInts
  an <- getInts
  let minCount = length $ filter (== 1) an
  print $ ceiling $ div' (n-minCount) (k-1)