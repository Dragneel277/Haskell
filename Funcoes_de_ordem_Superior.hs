import Prelude hiding ((.))

duas_vezes::(a->a)->a->a
duas_vezes f x = f (f x)
--duas_vezes reverse [1,2,3] devolve o mesmo array pq faz 2 vezes
--duas_vezes (*2) 3 devolve 12 porque fz 2*3=2*6=12
--duas_vezes (\x->x+1) 3 devolve 5 porque fz (\x->x+1) 3+1=4+1=5


map'::(a->b)->[a]->[b]
map' f [] = []      --usando lista por compreensao
map' f xs = [f x | x <- xs]
--map' (\x->x+1) [1,2,3] devolve [2,3,4]

map''::(a->b)->[a]->[b]
map'' f [] = [] --usando recursao
map'' f (x:xs) = f x : map'' f xs
--map'' (\x->x+1) [1,2,3] devolve [2,3,4]

filter'::(a->Bool)->[a]->[a]
filter' f [] = []
filter' f (x:xs) = if f x then x : filter' f xs else filter' f xs
--filter' (\x->x>2) [1,2,3] devolve [3]

filter''::(a->Bool)->[a]->[a]
filter'' f [] = []
filter'' f (x:xs) = [x | x <- (x:xs), f x]
--filter'' (>5) [1..10] devolve [6,7,8,9,10]

{-
foldr (+) 0 [1,2,3,4]
10
*Main> foldl (+) 0 [1,2,3,4]
10
*Main> foldl (*) 0 [1,2,3,4]
0
foldr (*) 0 [1,2,3,4]
0
-}

(.) :: (b->c)->(a->b)->(a->c)
f . g = \x -> f (g x)

odd' :: Int -> Bool
odd' = not.even

sumsqreven :: [Int] -> Int
sumsqreven = sum . map (^2) . filter even

--sum=foldr (+) 0 