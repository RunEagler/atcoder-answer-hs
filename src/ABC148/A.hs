

answer::Int -> Int -> Int
main = do
  a <- readLn
  b <- readLn
  print $ answer a b
  
answer a b = head [x | x <- [1..3], a /= x && b /= x]