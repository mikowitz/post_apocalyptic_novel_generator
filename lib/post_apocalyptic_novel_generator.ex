defmodule PostApocalypticNovelGenerator do
  @moduledoc """
  Generates the plot of a post-apocalyptic novel.

  `generate/1` takes a single string as an argument and uses that to seed the generator.

  `generate_random/0` generates a random string to seed the generator.
  """

  alias PostApocalypticNovelGenerator.{Disaster, Hero, Solution}


  @doc """
  Takes a string as input and seeds the plot generator from that string.

  ## Examples

      iex> PostApocalypticNovelGenerator.generate("Michael")
      "After civilization is destroyed by radiation, a superpowered journalist must survive by finding a death cult."

  """
  @spec generate(String.t) :: String.t
  def generate(name) do
    [{who, how}, {adjective, hero}, {verb, enemy}] =
      [&Disaster.generate_pair/1, &Hero.generate_pair/1, &Solution.generate_pair/1]
      |> Enum.map(fn func -> func.(name) end)

    generate_sentence(who, how, adjective, hero, verb, enemy)
  end

  def generate_random do
    Enum.map(0..char_count(), fn _ -> random_char() end)
    |> to_string
    |> IO.inspect
    |> generate()
  end

  defp generate_sentence(who, how, adjective, hero, verb, enemy) do
    "After #{who} is destroyed by #{how}, #{article_for(adjective)} #{adjective} #{hero} must survive by #{verb} #{enemy}."
  end

  defp article_for("a" <> _), do: "an"
  defp article_for("e" <> _), do: "an"
  defp article_for("i" <> _), do: "an"
  defp article_for("o" <> _), do: "an"
  defp article_for("u" <> _), do: "an"
  defp article_for(_), do: "a"

  defp random_char, do: :rand.uniform(26) + ?a - 1
  defp char_count, do: :rand.uniform(5)
end
