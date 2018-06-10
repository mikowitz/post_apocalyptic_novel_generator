defmodule PostApocalypticNovelGenerator.HeroTest do
  use ExUnit.Case, async: true

  alias PostApocalypticNovelGenerator.Hero

  test "generate_pair/1" do
    assert Hero.generate_pair("Michael") == {"superpowered", "journalist"}
    assert Hero.generate_pair("Lauren") == {"determined", "social worker"}
    assert Hero.generate_pair("R") == {"half-dead", "social worker"}
    # assert Hero.generate_pair("Étien") == {"North America", "an airborne toxic event"}
  end
end

