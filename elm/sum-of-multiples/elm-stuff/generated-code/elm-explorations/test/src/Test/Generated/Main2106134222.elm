module Test.Generated.Main2106134222 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 164513522358736, processes = 8, paths = ["/Users/pulkit/Playground/exercism/elm/sum-of-multiples/tests/Tests.elm"]}