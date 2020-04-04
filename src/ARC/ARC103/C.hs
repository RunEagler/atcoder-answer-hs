module ARC.ARC103.C where

import qualified Data.ByteString.Char8 as B
import qualified Data.Function (on)
import Data.Maybe (fromJust)
import Data.List (sortBy, sort)
import Data.List (group)

sortDesc::[Int]->[Int]
sortDesc = sortBy $ flip compare

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

maxFreq::[Int]->Int
maxFreq vn = sortDesc $ map (\x ->(head x, length x)) . group $ sort vn

main = do
  getLine
  vn <- getInts
  let evenList = [x | (i, x) <- zip [0..] vn,even i]
  let oddList = [x | (i,x) <- zip [0..] vn,odd i]
  print $ evenList
  print $ (maxFreq evenList)
--  let evenCount = length evenList - (maxFreq evenList) where evenList = filter even vn
--  let oddCount = length oddList - (maxFreq oddList) where oddList = filter odd vn
--  print $ evenCount + oddCount


1 1 1 1 4 4 4 4 4 4