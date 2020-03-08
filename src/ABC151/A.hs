module ABC151.A where

import Data.Char
main = do
  alphabet <- getChar
  putChar $ chr $ ord alphabet + 1