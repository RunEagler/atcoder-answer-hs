module ABC70.C where

import qualified Data.ByteString.Char8 as B
import Control.Monad (replicateM)
import Data.Maybe (fromJust)

main = do
  n <- readLn
  tn <- replicateM n (fst . fromJust . B.readInt <$> B.getLine)
  print $ foldl1 lcm tn