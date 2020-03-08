module ABC144.B where

-- another answer
--judge::Int->Int->Bool
--judge a n | n `mod` a == 0 = n `div` a < 10
--          | otherwise = judge (a-1) n
--
--main = do
--  n <- readLn
--  putStrLn $ if judge 9 n then "Yes" else "No"

main = do
  n <- readLn
  putStrLn $ if length [x |x <- [1..9], mod n x == 0 && div n x < 10] > 0 then "Yes" else "No"