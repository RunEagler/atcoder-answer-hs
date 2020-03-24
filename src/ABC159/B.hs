module ABC159.B where

isPalindrome::[Char]->Bool
isPalindrome cn = cn == reverse cn

main = do
  s <- getLine
  let n = length s
  putStrLn $ if (isPalindrome s) && (isPalindrome $ take (div (n-1) 2) s) && (isPalindrome $ drop ((div (n+3) 2)-1) s) then "Yes" else "No"