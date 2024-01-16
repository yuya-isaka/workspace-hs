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