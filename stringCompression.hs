chomp :: String -> String
chomp "" = ""
chomp (x:"") = [x]
chomp (x:xs) = if x==head(xs) then x:chomp(xs) else [x]

munch :: String -> String
munch x = take 9 (chomp x)

runs :: String -> [String]
runs "" = []
runs x = [munch x] ++ runs(drop (length(munch x)) x)

encode :: String -> [(Char, Int)]
encode "" = []
encode x = [(,) (head(head(runs x))) (length(head(runs x)))] ++ encode (drop (length(head(runs x))) x)

flatten :: [(Char, Int)] -> String
flatten [] = ""
flatten (x:xs) = "" ++ [fst(x)] ++ show(snd(x)) ++ flatten xs

compress :: String -> String
compress "" = ""
compress x = flatten(encode x)



decode :: [(Char, Int)] -> String
decode [] = ""
decode (x:xs) = "" ++ replicate (snd x) (fst x) ++ decode xs

expand :: String -> [(Char, Int)]
expand "" = []
expand (x:xs) = [(,) (x) (fromEnum(head(xs)) - 48)] ++ expand (drop 1 xs)

decompress :: String -> String
decompress "" = ""
decompress x = decode(expand x)
