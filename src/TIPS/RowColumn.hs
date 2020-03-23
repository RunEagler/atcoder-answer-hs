module TIPS.RowColumn where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Control.Monad (replicateM)
import Data.List (transpose)

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

--input
--3 5 4
--11100
--10001
--00111
main = do
  [h,w,k] <- getInts
  sn <- replicateM h $ map (:[]) <$> getLine
  let rowCount = map length $ filter (=="1") <$> sn
  let columCount = map length $ filter (=="1") <$> transpose sn
  print $ rowCount
  print $ columCount
