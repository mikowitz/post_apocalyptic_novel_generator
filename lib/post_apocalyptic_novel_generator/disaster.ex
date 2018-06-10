defmodule PostApocalypticNovelGenerator.Disaster do

  @doc """

  `generate_pair` accepts a bitstring and returns a tuple of a disaster
  based on the first two letters of the string (or the first letter twice,
  in the case of a one character string).


  ## Example

      iex> Disaster.generate_pair("Michael")
      {"civilization", "radiation"}

      iex> Disaster.generate_pair("M")
      {"civilization", "a mysterious virus"}

  """
  @spec generate_pair(String.t) :: {String.t, String.t}
  def generate_pair(string) when is_bitstring(string) do
    [who, what] = string
                  |> String.downcase
                  |> String.split("", trim: true)
                  |> Stream.cycle
                  |> Enum.take(2)
    {who(who), what(what)}
  end

  defp who("a"), do: "the West Coast"
  defp who("b"), do: "half the population"
  defp who("c"), do: "Los Angeles"
  defp who("d"), do: "the government"
  defp who("e"), do: "North America"
  defp who("f"), do: "the internet"
  defp who("g"), do: "the entire male population"
  defp who("h"), do: "Asia"
  defp who("i"), do: "the East Coast"
  defp who("j"), do: "New York City"
  defp who("k"), do: "the Midwest"
  defp who("l"), do: "the entire male population"
  defp who("m"), do: "civilization"
  defp who("n"), do: "Europe"
  defp who("o"), do: "most of humanity"
  defp who("p"), do: "human reproduction"
  defp who("q"), do: "all plant life"
  defp who("r"), do: "the ocean"
  defp who("s"), do: "most of Earth"
  defp who("t"), do: "the electrical grid"
  defp who("u"), do: "Africa"
  defp who("v"), do: "the water supply"
  defp who("w"), do: "the polar ice"
  defp who("x"), do: "the moon"
  defp who("y"), do: "all infrastructure"
  defp who("z"), do: "society"

  defp what("a"), do: "a flu pandemic"
  defp what("b"), do: "a terrorist attack"
  defp what("c"), do: "an earthquake"
  defp what("d"), do: "a zombie attack"
  defp what("e"), do: "nuclear war"
  defp what("f"), do: "a second Ice Age"
  defp what("g"), do: "a plague"
  defp what("h"), do: "a tsunami"
  defp what("i"), do: "radiation"
  defp what("j"), do: "a robot uprising"
  defp what("k"), do: "a doomsday machine"
  defp what("l"), do: "global warming"
  defp what("m"), do: "a mysterious virus"
  defp what("n"), do: "aliens"
  defp what("o"), do: "capitalism"
  defp what("p"), do: "a new street drug"
  defp what("q"), do: "drought"
  defp what("r"), do: "an asteroid strike"
  defp what("s"), do: "pollution"
  defp what("t"), do: "an airborne toxic event"
  defp what("u"), do: "an electromagnetic pulse"
  defp what("v"), do: "Ice-nine"
  defp what("w"), do: "World War III"
  defp what("x"), do: "death rays"
  defp what("y"), do: "rising oceans"
  defp what("z"), do: "a solar flare"

  # defp what("a"), do: ""
  # defp what("b"), do: ""
  # defp what("c"), do: ""
  # defp what("d"), do: ""
  # defp what("e"), do: ""
  # defp what("f"), do: ""
  # defp what("g"), do: ""
  # defp what("h"), do: ""
  # defp what("i"), do: ""
  # defp what("j"), do: ""
  # defp what("k"), do: ""
  # defp what("l"), do: ""
  # defp what("m"), do: ""
  # defp what("n"), do: ""
  # defp what("o"), do: ""
  # defp what("p"), do: ""
  # defp what("q"), do: ""
  # defp what("r"), do: ""
  # defp what("s"), do: ""
  # defp what("t"), do: ""
  # defp what("u"), do: ""
  # defp what("v"), do: ""
  # defp what("w"), do: ""
  # defp what("x"), do: ""
  # defp what("y"), do: ""
  # defp what("z"), do: ""
end
