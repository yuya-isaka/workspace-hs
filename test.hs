double :: (Num a) => a -> a
double x = x + x

quadruple :: (Num a) => a -> a
quadruple x = double (double x)

-- Factorial of a positive integer:
factorial :: (Num a, Enum a) => a -> a
factorial n = product [1 .. n]

-- Average of a list of integers:
average :: (Foldable t) => t Int -> Int
average ns = sum ns `div` length ns

a :: Integer
a = b + c
  where
    b = 1
    c = 2

d :: Integer
d = a * 2

n :: Int
n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]

lastyuya :: [a] -> a
lastyuya xs = xs !! (length xs - 1)

lastyuya2 :: [a] -> a
lastyuya2 xs = head (reverse xs)

inityuya :: [a] -> [a]
inityuya xs = take (length xs - 1) xs

inityuya2 :: [a] -> [a]
inityuya2 xs = reverse (tail (reverse xs))

add' :: (Num a) => a -> (a -> a)
add' x y = x + y

{-
3.11
1.
[Char]
(Char, Char, Char)
[(Bool, Char)]
([Bool], [Char])
[[a] -> [a]]

3.
second :: [a] -> a
swap :: (a,b) -> (b,a)
pair :: a -> b -> (a,b)
double :: Num a => a -> a
palindrome :: Eq a => [a] -> Bool
twice :: (a -> a) -> a -> a
-}

-- 2
bools :: [Bool]
bools = [True, False]

nums :: [[Int]]
nums = [[2 * 3, 3 * 3], [3 + 3, 1 + 1]]

numsanswer = [[1, 2], [3, 4], [5, 6]]

add :: Int -> Int -> Int -> Int
add a b c = a + b + c

copy :: b -> (b, b)
copy x = (x, x)

applyuya :: (t1 -> t2) -> t1 -> t2
applyuya f x = f x

second xs = head (tail xs)

swap (x, y) = (y, x)

pair x y = (x, y)

doubleyuya x = x * 2

palindrome xs = reverse xs == xs

twice f x = f (f x)