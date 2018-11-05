module Lib (lsize, lmap, lfilter, lhead, llast, lreduce) where 

lsize :: Num p => [a] -> p
lsize [] = 0
lsize (x:xs) = 1 + lsize xs 

lmap :: (t -> a) -> [t] -> [a]
lmap f [] = []
lmap f (x:xs) = f x : lmap f xs

lfilter :: (a -> Bool) -> [a] -> [a]
lfilter f [] = []
lfilter f (x:xs) = if f x then x:lfilter f xs else lfilter f xs 

lhead :: [a] -> a
lhead (x:xs) = x

llast :: [a] -> a
llast (x:xs) = if lsize xs == 0 then x else llast xs

lreduce :: (z -> a -> z) -> [a] -> z -> z
lreduce f [] z = z
lreduce f (x:xs) z = lreduce f xs (f z x)