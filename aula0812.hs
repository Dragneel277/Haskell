
div4 :: (Integral a, Ord a) => a -> Bool 
div4 x | mod x  4  == 0 = True
 |otherwise = False 


ld4 :: Integral a => [a] -> [a]
ld4 xs = [x | x <- xs, div4 x] 

impar :: [Int] -> [Int]
impar xs = [x | x <- xs, odd x] 

im :: [Int]
im = [x | x <- [1..20], odd x]

