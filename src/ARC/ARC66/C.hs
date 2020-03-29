module ARC.ARC66.C where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Data.List (sort, group)

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine


isAllTruth::[(Int,Int)]->Int->Bool
isAllTruth doublePair op = all (\((a,b),v) -> a == v && b == 2) $ zip doublePair [op,op+2..]

main = do
  n <- readLn
  an <- getInts
  let an' = map (\x->(head x,length x)) . group $ sort an
  print $ let ans = mod (2^(div n 2)) (10^9+7) in if even n then
      if isAllTruth an' 1 then ans else 0
    else
      if (fst (head an') == 0) && (snd (head an') == 1)  && isAllTruth (tail an') 2 then ans else 0