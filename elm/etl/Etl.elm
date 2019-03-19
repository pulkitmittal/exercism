module Etl exposing (transform)

import Dict exposing (Dict)


transform : Dict Int (List String) -> Dict String Int
transform input =
    scoreWise input []


scoreWise : Dict Int (List String) -> List ( String, Int ) -> Dict String Int
scoreWise input list =
    let
        key =
            Dict.keys input |> List.head
    in
    case key of
        Nothing ->
            Dict.fromList list

        Just n ->
            scoreWise (Dict.remove n input) (appendToList input n list)


appendToList : Dict Int (List String) -> Int -> List ( String, Int ) -> List ( String, Int )
appendToList input key list =
    case Dict.get key input of
        Nothing ->
            list

        Just innerList ->
            List.append list (List.map (\a -> ( String.toLower a, key )) innerList)
