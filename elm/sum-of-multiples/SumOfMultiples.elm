module SumOfMultiples exposing (sumOfMultiples)

import Set exposing (..)


sumOfMultiples : List Int -> Int -> Int
sumOfMultiples multiples limit =
    multiples
        |> List.map (\v -> multipleOf v limit)
        |> List.concat
        |> Set.fromList
        |> Set.toList
        |> List.sum


multipleOf : Int -> Int -> List Int
multipleOf x limit =
    List.range x (limit - 1)
        |> List.filter (\v -> Basics.modBy x v == 0)
