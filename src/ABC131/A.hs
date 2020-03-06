
import Data.List (group)

main = do
  s <- getLine
  putStrLn $ if all (==1) (map length $ group s) then "Good" else "Bad"