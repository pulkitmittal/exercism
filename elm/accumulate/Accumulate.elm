module Accumulate exposing (accumulate)

import Array exposing (..)


accumulate : (a -> b) -> List a -> List b
accumulate func input =
    funcIt func input []


funcIt : (a -> b) -> List a -> List b -> List b
funcIt func input output =
    let
        v =
            List.head input
    in
    case v of
        Nothing ->
            output

        Just xs ->
            func xs
                |> List.singleton
                |> List.append output
                |> funcIt func (List.drop 1 input)
