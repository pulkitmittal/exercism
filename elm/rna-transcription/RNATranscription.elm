module RNATranscription exposing (toRNA)


toRNA : String -> Result Char String
toRNA dna =
    let
        rna =
            dna |> String.map toRNANucleotide
    in
    if not (String.contains "." rna) && matchLength rna dna then
        Ok rna

    else
        Err 'X'


toRNANucleotide : Char -> Char
toRNANucleotide dna =
    case dna of
        'G' ->
            'C'

        'C' ->
            'G'

        'T' ->
            'A'

        'A' ->
            'U'

        _ ->
            '.'


matchLength : String -> String -> Bool
matchLength str1 str2 =
    String.length str1 == String.length str2
