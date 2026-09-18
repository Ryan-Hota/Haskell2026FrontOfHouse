-- Q1) make a function that drops the odd index elements of a list 
-- >>> dropOdds [1,2,3,4,5]
-- [1,3,5]

-- A1)
dropOdds :: [a] -> [a]
dropOdds xs = [ x | (i, x) <- zip [0..] xs, i `mod` 2 /= 1 ]

-- Q2) make a function that takes xs (a list of lists of numbers) 
-- and returns the list of sums of the members of the nonempty lists in xs 
-- >>> sums [[1..5], [], [2,6]] 
-- [15,8]

-- A2) 
sums :: Num a => [[a]] -> [a]
sums ls = [ sum l | l@(_:_) <- ls ]

-- Q3)
f xs = foldr (/=) False xs
-- find the type of f 
-- Compute f on two example inputs

-- A3)
-- >>> :t f 
-- f :: Foldable t => t Bool -> Bool
