module ABC69.C where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import qualified Data.Map.Strict as M
import qualified Data.Vector.Unboxed as VU

getInts :: IO[Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

cnt::Int->Int->Int->Int->(Int,Int,Int)
cnt k a b c | mod k 4 == 0 = (a+1,b,c)
            | mod k 2 == 0 = (a,b+1,c)
            | otherwise = (a,b,c+1)


solve::Int->Int->Int->String
solve a b c | b > 0 && a >= c = "Yes"
            | b == 0 && a >= c -1  = "Yes"
            | otherwise = "No"

main = do
  getLine
  an <- getInts
  let (a4,a2,a1) = VU.foldl (\(a,b,c) x-> cnt x a b c) (0,0,0) $ VU.fromList an
  putStrLn $ solve a4 a2 a1