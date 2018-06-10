defmodule PostApocalypticNovelGeneratorTest do
  use ExUnit.Case
  doctest PostApocalypticNovelGenerator

  test "generate/1" do
    assert PostApocalypticNovelGenerator.generate("R") ==
      "After the ocean is destroyed by an asteroid strike, a half-dead social worker must survive by negotiating with a military bunker."



    assert PostApocalypticNovelGenerator.generate("Athol") == "After the West Coast is destroyed by an airborne toxic event, an immune mailman must survive by infiltrating an army of clones."

    assert PostApocalypticNovelGenerator.generate("Étien") == "After North America is destroyed by an airborne toxic event, a cybernetic scientist must survive by discovering a death cult."
  end
end
