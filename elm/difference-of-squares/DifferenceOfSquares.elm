module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)


squareOfSum : Int -> Int
squareOfSum n =
    (n * (n + 1) // 2) ^ 2


sumOfSquares : Int -> Int
sumOfSquares n =
    if n > 0 then
        n ^ 2 + sumOfSquares (n - 1)

    else
        0


difference : Int -> Int
difference n =
    squareOfSum n - sumOfSquares n
