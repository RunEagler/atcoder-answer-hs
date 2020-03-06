
import Data.Char
main = do
  alphabet <- getChar
  putChar $ chr $ ord alphabet + 1