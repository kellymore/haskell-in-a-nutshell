import Data.List
import System.IO

-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Double
bigFloat = 3.99999999999 + 0.00000000005

-- Permanent Value of Variables
always5 :: Int
always5 = 5

-- Math Functions
sumOfNums = sum[1..1000]
addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4
-- mod here is a prefix operator
modEx = mod 5 4
-- mod here is an infix operator
modEx2 = 5 `mod` 4
-- adding with negative numbers require a ()
negNumx = 5 + (-4)

-- :t sqrt
num9 = 9 :: Int
sqrt9 = sqrt (fromIntegral num9)

-- Logical Operators
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- Lists
primeNumbers = [5, 7, 11]
-- Concatanation happens with 2 pluses ++
morePrimeNumbers = primeNumbers ++ [13, 17, 19, 23, 29]

-- Cons operator, is a way to combine numbers into a list
favNums = 2 : 7 : 21 : 66 : []

-- Lists inside lists
multList = [[1,2,3], [4,5,6]]

-- More Primes2

morePrimes2 = 2 : morePrimeNumbers

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1

firstPrime  = head morePrimes2

lastPrime = last morePrimes2

--- Gets everything but the last value
primeInit = init morePrimes2

first3Primes = take 3 morePrimes2

removedPrimes = drop 3 morePrimes2

--- A bool will be returned
is7InList = 7 `elem` morePrimes2

maxPrime = maximum morePrimes2

minPrime = minimum morePrimes2

newList = [2,3,5]

prodPrimes = product newList

--- Automatically calculates this for us
zeroToTen = [0..10]

evenList = [2,4..20]

-- Every other value wil be returned
letterList = ['A', 'C'..'Z']

{- Generates an infinit list. However, it's only going to 
calculate or create the list up to what you need, whenever 
you need it. This is an example of Haskell "laziness" -}
infinPow10 = [10,20..]

-- Repeats 2, 10x
many2s = take 10 (repeat 2)

-- Repeats 3, 10x
many3s = replicate 10 3

-- Repeats the items until there are 10 values
cycleList = take 10 (cycle [1,2,3,4,5])

listTimes2 = [x * 2 | x <- [1..10]]

-- When we only want the list to have muliples of 3 that are <= 50
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]

-- Filtering to return numbers that are both divisiable by 13 and 9
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

sortedList = sort [9,1,8,3,0,1,4,7]

-- Adds values in both lists and creates a new list
sumOfLists = zipWith (+) [1,2,,3,4,5] [6,7,8,9,10]

listsBiggerThan5 = filter (>5) morePrimes 

-- An example of what "lazy" means in Haskell
evensUpTo20 = takeWhile (<= 20) [2,4..] 

-- Multiplies from left to right. For right to left, foldr
multOfList = foldl (*) 1 [2,3,4,5]

-- List Comprehensions
