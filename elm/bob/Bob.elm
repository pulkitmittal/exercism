module Bob exposing (hey)


hey : String -> String
hey remark =
    let
        trimmed =
            remark |> String.trim
    in
    if isYelling trimmed && isQuestion trimmed then
        "Calm down, I know what I'm doing!"

    else if isYelling trimmed then
        "Whoa, chill out!"

    else if isQuestion trimmed then
        "Sure."

    else if isNothing trimmed then
        "Fine. Be that way!"

    else
        "Whatever."


isYelling : String -> Bool
isYelling remark =
    String.any Char.isAlpha remark && String.toUpper remark == remark


isQuestion : String -> Bool
isQuestion remark =
    String.endsWith "?" remark


isNothing : String -> Bool
isNothing remark =
    String.isEmpty remark
