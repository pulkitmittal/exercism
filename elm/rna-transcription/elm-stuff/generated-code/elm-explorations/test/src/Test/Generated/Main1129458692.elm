module Test.Generated.Main1129458692 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 51350811057145, processes = 8, paths = ["/Users/pulkit/Playground/exercism/elm/rna-transcription/tests/Tests.elm"]}