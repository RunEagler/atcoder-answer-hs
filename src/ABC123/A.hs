module ABC123.A where

import Control.Monad (replicateM)

main = do
  line <- replicateM 5 readLn
  k <- readLn
  putStrLn $ if maximum line - minimum line > k then ":(" else "Yay!"