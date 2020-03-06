
import Data.List
import Data.Maybe
main = do
  s <- getLine
  putStrLn $ (cycle list) !! ((fromJust $ elemIndex s list) + 1)
    where list = ["Sunny","Cloudy","Rainy"]