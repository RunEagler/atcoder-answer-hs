

isHitachi::String -> Bool
isHitachi xs = even len && xs == take len (cycle "hi")
                  where len = length xs
main = do
  s <- getLine
  putStrLn $ if isHitachi s then "Yes" else "No"