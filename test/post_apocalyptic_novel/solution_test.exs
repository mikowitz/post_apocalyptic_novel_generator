defmodule PostApocalypticNovelGenerator.SolutionTest do
  use ExUnit.Case, async: true

  alias PostApocalypticNovelGenerator.Solution

  test "generate_pair/1" do
    assert Solution.generate_pair("Michael") == {"finding", "a death cult"}
    assert Solution.generate_pair("Lauren") == {"escaping from", "a new religion"}
    assert Solution.generate_pair("R") == {"negotiating with", "a military bunker"}
    # assert Solution.generate_pair("Étien") == {"North America", "an airborne toxic event"}
  end
end


