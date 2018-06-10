defmodule PostApocalypticNovelGenerator.DisasterTest do
  use ExUnit.Case, async: true

  alias PostApocalypticNovelGenerator.Disaster

  test "generate_pair/1" do
    assert Disaster.generate_pair("Michael") == {"civilization", "radiation"}
    assert Disaster.generate_pair("Lauren") == {"the entire male population", "a flu pandemic"}
    assert Disaster.generate_pair("R") == {"the ocean", "an asteroid strike"}
  end
end
