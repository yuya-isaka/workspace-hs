import System.Environment (getArgs)
import Text.Read (readMaybe)

calculate :: String -> Int
calculate = fst . foldl evaluate (0, '+') . words
  where
    evaluate (acc, op) s
      | Just n <- readMaybe s :: Maybe Int = (applyOp op acc n, '+')
      | otherwise = (acc, head s)
    applyOp '+' = (+)
    applyOp '-' = (-)
    applyOp _ = error "Invalid operator"

main :: IO ()
main = do
  args <- getArgs
  case args of
    [input] -> print $ calculate input
    _ -> putStrLn "Invalid number of arguments. Usage: program <expression>"
