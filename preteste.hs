type Pos=(Int,Int)

origem :: Pos
origem = (0,0)

esquerda :: Pos -> Pos
esquerda (x,y) = (x-1,y)


type Trans = Pos -> Pos

--type Tree=(Int,[Tree]) --porem não funciona porque não da para usar recursiva com declaraçoes

data Bool= True|False

--Ex
data Move = North|South|East|West

--Podemos Defenir
move :: Move -> Pos -> Pos
move North (x,y) = (x,y+1)
move South (x,y) = (x,y-1)
move East (x,y) = (x+1,y)
move West (x,y) = (x-1,y)


data Shape = Circle Float| Rect Float Float
    deriving (Eq,Show)

square :: Float -> Shape
square n = Rect n n

area :: Shape -> Float
area (Circle r) = pi * r^(2 :: Integer)
area (Rect x y) =x * y

data  Maybe' a = Nothing' | Just' a
    deriving (Eq,Show)

safediv :: Int-> Int -> Maybe' Int
safediv _ 0 = Nothing'
safediv m n= Just' (m `div` n) --usar (`) quando usando o div ou ate elem


