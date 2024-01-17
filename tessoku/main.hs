main :: IO ()
main = interact (encode . solve . decode)

-- lines関数：与えられた文字列（例えばファイルの内容や長いテキスト）を、改行文字で分割し、文字列のリストに変換
-- map (map read . words)：外側のmapはlinesによって生成された各行（文字列リスト）に適用。内側のmap read . wordsは各行に対して実行され、以下の処理
--    words関数：行を空白文字で分割し、単語のリストに変換。
--    map read：wordsによって生成された各単語（文字列）をread関数で数値に変換
decode :: String -> [[Int]]
decode = map (map read . words) . lines

encode :: [[Int]] -> String
encode = unlines . map (unwords . map show)

solve :: [[Int]] -> [[Int]]
solve dds = case dds of
  [n] : _ -> [[n * n]]