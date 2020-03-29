module ARC.ARC103.C where

import qualified Data.ByteString.Char8 as B
import qualified Data.Function (on)
import Data.Maybe (fromJust)
import Data.List (sortBy)
import Data.List (group)

sortDesc::[Int]->[Int]
sortDesc = sortBy $ flip compare

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

maxFreq::[Int]->Int
maxFreq vn = length $ head $ group $ sortDesc vn

main = do
  getLine
  vn <- getInts
  let evenCount = length evenList - (maxFreq evenList) where evenList = filter even vn
  let oddCount = length oddList - (maxFreq oddList) where oddList = filter odd vn
  print $ evenCount + oddCount