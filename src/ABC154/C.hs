module ABC154.C where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import qualified Data.Set as S

getInts :: IO[Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main = do
  n <- readLn
  an <- S.fromList <$> getInts
  putStrLn $ if S.size an == n then "YES" else "NO"