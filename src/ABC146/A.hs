module ABC146.A where

import Data.List
import Data.Maybe

answer::String -> Int
main = answer <$> getLine >>= print
  
answer s = 7 - (fromJust $ elemIndex s ["SUN","MON","TUE","WED","THU","FRI","SAT" ])