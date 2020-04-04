module ABC161.D where

import qualified Data.Vector.Unboxed as VU

runrun::[Int]
runrun = [1..9] ++ [x*10+i | x <- runrun,let digit = mod x 10, i <- [digit-1,digit,digit+1],0 <= i && i <= 9]

main = do
  k <- readLn
  print $ runrun !! (k-1)