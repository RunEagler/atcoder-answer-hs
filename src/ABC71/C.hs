module ABC71.C where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Data.List (group, sortBy)

sortDesc::[Int]->[Int]
sortDesc = sortBy $ flip compare

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

solve::[(Int,Int)]->Int
solve sn | length sn > 0 = if (snd $ head sn) >= 4 then (fst $ head sn) ^ 2 else product . map fst $ take 2 sn
         | otherwise = 0

main = do
  getLine
  an <- getInts
  let sn = map (\x -> (head x,length x)) . filter (\x -> length x > 1) . group $ sortDesc an
  print $ solve sn
