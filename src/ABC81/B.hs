module ABC81.B where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

solve::[Int]->Int
solve an | all even an = 1 + (solve $ map (`div` 2) an)
         | otherwise = 0
main = do
  getLine
  an <- getInts
  print $ solve an