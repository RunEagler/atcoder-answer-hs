--module ABC158.D where
--
--import Control.Monad (replicateM)
--import qualified Data.ByteString.Char8 as BS
--import Data.ByteString.Char8 (unpack)
--
--toString::(Bool,[String],[String],String)->String
--toString (True,h,t,s) = [concat h,s]
--toString (False,h,t,s) = reverse [h,s,t]
--
--main = do
--  s <- getLine
--  q <- readLn
--  qn <- replicateM q BS.getLine::IO[BS.ByteString]
--  let p = toString $ foldl (\(r, h, t,s) p -> case words (unpack p) of
--            ["2","1",c] -> if r then (r,(c:h),t,s) else (r,h,c:t,s)
--            ["2","2",c] -> if r then (r,h,c:t,s) else (r,c:h,t,s)
--            _ -> (not r, h,t,s)) (True,[],[],s) qn
--  putStrLn $ p