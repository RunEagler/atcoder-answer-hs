module ABC127.C where
import Control.Monad
import Data.List

answer::[Int]->[Int]->Int
answer ln rn = max 0 (minimum rn - maximum ln + 1)

getInts::IO[Int]
getInts = getLine >>= mapM readIO . words

main = do
  [n,m] <- map read . words <$> getLine
  [ln,rn] <- transpose <$> replicateM m getInts
  print $ answer ln rn