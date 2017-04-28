module Cal where

import Data.Char
import Data.List
import System.Environment

data Fomula = Ond String | Otr String

parse :: String -> [Fomula]
parse [] = []
parse list@(x:xs)
    | isDigit x = let (y,z) = span isNum list in Ond y : parse z
    | otherwise = Otr [x] : parse xs
    where isNum x = isDigit x || x  == '.'

getOrd :: Num t => String -> t
getOrd x = case x of
    "(" -> 0
    ")" -> 0
    "+" -> 1
    "-" -> 1
    "*" -> 2
    "/" -> 2
    "^" -> 3
    "√" -> 4

makeRPN :: [String] -> [Fomula] -> [String]
makeRPN stack [] = stack
makeRPN stack ((Ond x):xs) = x : makeRPN stack xs
makeRPN stack ((Otr x):xs)
    | x == "("  = makeRPN (x:stack) xs
    | x == ")"  = let (y,z) = span (/= "(") stack in y ++ makeRPN (tail z) xs
    | otherwise = case if length stack == 0 then True else getOrd x >= getOrd (head stack) of 
        True      -> makeRPN (x:stack) xs
        otherwise -> i ++ makeRPN (x:j) xs
            where (i,j) = span (\t -> getOrd (head stack) <= getOrd t) stack

solveRPN :: [String] -> Double
solveRPN = head . foldl folding []
    where folding (x:y:ys) "*" = (x * y):ys
          folding (x:y:ys) "+" = (x + y):ys
          folding (x:y:ys) "-" = (y - x):ys
          folding (x:xs)   "-" = (x * (-1)):xs
          folding (x:y:ys) "/" = (y / x):ys
          folding (x:y:ys) "^" = (y ** x):ys
          folding (x:xs)   "√" = (sqrt x):xs
          folding xs numberString = read numberString:xs

cal :: String -> String
cal n =
    let result = solveRPN . makeRPN [] . parse . filter (/=' ') $ n in
    if (snd . span (/= '.') . show $ result) == ".0" then show $ round (result :: Double) else show result
