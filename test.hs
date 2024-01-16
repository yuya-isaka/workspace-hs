double :: (Num a) => a -> a
double x = x + x

quadruple :: (Num a) => a -> a
quadruple x = double (double x)

-- Factorial of a positive integer:
factorial n = product [1 .. n]

-- Average of a list of integers:
average ns = sum ns `div` length ns

a = b + c
  where
    b = 1
    c = 2

d = a * 2

n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]

lastyuya xs = xs !! (length xs - 1)

lastyuya2 xs = head (reverse xs)

inityuya xs = take (length xs - 1) xs

inityuya2 xs = reverse (tail (reverse xs))