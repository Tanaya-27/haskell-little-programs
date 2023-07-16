second1 :: [a] -> a
second1 list = head(tail(list))
second2 :: [a] -> a
second2 list = list !! 1
second3 :: [a] -> a
second3 (x:xs) = head(xs)

xor1 :: Bool -> Bool -> Bool
xor1 False True = True
xor1 True False = True
xor1 _ _ = False
xor2 :: Bool -> Bool -> Bool
xor2 a b = if a==True then if b==True then False else True else
                if a==False then if b==True then True else False else False
xor3 :: Bool -> Bool -> Bool
xor3 a b = if a/=b then True else False

sumsqr :: Int -> Int
sumsqr x = sum[y^2 | y <- [1..x]]

grid :: Int -> [(Int,Int)]
grid n = [(x,y) | x <- [0..n], y <- [0..n], x/=y]

euclid :: Int -> Int -> Int
euclid a b = if a>b then euclid (a-b) b else
                if b>a then euclid (b-a) a else a

fastrev :: [a] -> [a]
fastrev xs = rev xs []
rev :: [a] -> [a] -> [a]
rev [] ys = ys
rev (x:xs) ys = rev xs (x:ys)