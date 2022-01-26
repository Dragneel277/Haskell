factorial :: Int->Int
factorial 0 = 1 --base case
factorial n = n * factorial (n-1) --recursive case

product' :: Num a => [a] -> a
product' [] = 1
product' (x:xs) = x * product' xs


length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs


reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

drop' :: Int -> [a] -> [a]
drop' 0 xs = xs
drop' n [] = []
drop' n (x:xs) = drop' (n-1) xs

fib :: Int -> Int
fib 0 = 0   --case 0
fib 1 = 1   --case 1
fib 2 = 1   --case 2
fib n = fib (n-1) + fib (n-2) 

even' :: Int -> Bool
even' 0 = True
even' n | n > 0 = odd' (n-1)

odd' :: Int -> Bool
odd' 0 = False
odd' n | n > 0 = even' (n-1)