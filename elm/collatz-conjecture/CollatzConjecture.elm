module CollatzConjecture exposing (collatz)


collatz : Int -> Result String Int
collatz start =
    if start <= 0 then
        Err "Only positive numbers are allowed"

    else
        Ok (untilOne start 0)


untilOne : Int -> Int -> Int
untilOne start step =
    if start == 1 then
        step

    else if modBy 2 start == 0 then
        untilOne (start // 2) (step + 1)

    else
        untilOne (start * 3 + 1) (step + 1)
