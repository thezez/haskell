--Usage: sumOfMultiples minValue maxValue multiple1 multiple2
-- e.g. sumOfMultiples 10 2 9 will return the sum of all multiples of either 2 or 9 up to and including 10. (39)

sumOfMultiples::Int->Int->Int->Int->Int
sumOfMultiples min max m1 m2 = sum[x | x <- [min..max], x `mod` m1 == 0 || x `mod` m2 == 0]

sumOfMultiplesRecursive::Int->Int->Int->Int->Int
sumOfMultiplesRecursive min max m1 m2
	| min > max = 0
	| min `mod` m1 == 0 || min `mod` m2 == 0 = min + sumOfMultiplesRecursive (min + 1) max m1 m2
	| otherwise = sumOfMultiplesRecursive (min + 1) max m1 m2
