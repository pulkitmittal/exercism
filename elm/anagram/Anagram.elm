module Anagram exposing (detect)


detect : String -> List String -> List String
detect word candidates =
    candidates
        |> List.filter (\w -> isAnagram ( word, w ))


isAnagram : ( String, String ) -> Bool
isAnagram ( word1, word2 ) =
    let
        w1 =
            String.toUpper word1

        w2 =
            String.toUpper word2
    in
    w1 /= w2 && List.sort (String.toList w1) == List.sort (String.toList w2)
