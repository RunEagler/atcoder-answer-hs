module TIPS.IO where

main = do
  print ""

--an <- VU.replicateM m $ (\vec -> vec VU.! 0) . VU.unfoldrN 1 readInt <$> B.getLine
--  (n, m) <-
--    (\vec -> (vec VU.! 0, vec VU.! 1)) . VU.unfoldrN 2 readInt <$> B.getLine
--
--
--readInt :: BS.ByteString -> Int
--readInt = fst . fromJust . BS.readInt
--
--getInt :: IO Int
--getInt = readInt <$> BS.getLine
--
--getIntList :: IO [Int]
--getIntList = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine
--
--getIntVec :: Int -> IO (VU.Vector Int)
--getIntVec n = VU.unfoldrN n (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine
--
--  ts <- (U.fromList . sort) <$> replicateM n cReadLn
--
--  replicateM 2 $ VU.map (subtract 1)