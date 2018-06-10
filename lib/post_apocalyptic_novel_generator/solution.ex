defmodule PostApocalypticNovelGenerator.Solution do

  @doc """

  `generate_pair` accepts a bitstring and returns a tuple of a hero
  based on the third and fourth letters of the string (or the first letter twice,
  in the case of a one character string).


  ## Example

      iex> Hero.generate_pair("Michael")
      {"superpowered", "journalist"}

      iex> Disaster.generate_pair("M")
      {"superpowered", "conspiracy theorist"}

  """
  @spec generate_pair(String.t) :: {String.t, String.t}
  def generate_pair(string) when is_bitstring(string) do
    [verb, noun] = string
                  |> String.downcase
                  |> String.split("", trim: true)
                  |> Stream.cycle
                  |> Stream.drop(4)
                  |> Enum.take(2)
    {verb(verb), noun(noun)}
  end

  defp verb("a"), do: "finding"
  defp verb("b"), do: "creating"
  defp verb("c"), do: "scavenging from"
  defp verb("d"), do: "destroying"
  defp verb("e"), do: "escaping from"
  defp verb("f"), do: "tricking"
  defp verb("g"), do: "waging war on"
  defp verb("h"), do: "hunting down"
  defp verb("i"), do: "challenging"
  defp verb("j"), do: "outwitting"
  defp verb("k"), do: "submitting to"
  defp verb("l"), do: "infiltrating"
  defp verb("m"), do: "navigating"
  defp verb("n"), do: "discovering"
  defp verb("o"), do: "eating"
  defp verb("p"), do: "hiding in"
  defp verb("q"), do: "redecorating"
  defp verb("r"), do: "negotiating with"
  defp verb("s"), do: "genetically modifying"
  defp verb("t"), do: "becoming part of"
  defp verb("u"), do: "designing"
  defp verb("v"), do: "establishing"
  defp verb("w"), do: "restarting"
  defp verb("x"), do: "avenging"
  defp verb("y"), do: "battling"
  defp verb("z"), do: "learning to live with"

  defp noun("a"), do: "an army of clones"
  defp noun("b"), do: "a dystopian government"
  defp noun("c"), do: "a group of mutants"
  defp noun("d"), do: "a shadow government"
  defp noun("e"), do: "a death cult"
  defp noun("f"), do: "a futuristic prison"
  defp noun("g"), do: "a group of zombies"
  defp noun("h"), do: "the patriarchy"
  defp noun("i"), do: "a terrorist cell"
  defp noun("j"), do: "a pack of wild dogs"
  defp noun("k"), do: "abandoned homes"
  defp noun("l"), do: "a rival gang"
  defp noun("m"), do: "a medical facility"
  defp noun("n"), do: "a new religion"
  defp noun("o"), do: "a false prophet"
  defp noun("p"), do: "the other survivors"
  defp noun("q"), do: "a spaceship"
  defp noun("r"), do: "a military bunker"
  defp noun("s"), do: "the Svalbard Seed Vault"
  defp noun("t"), do: "a makeshift city"
  defp noun("u"), do: "the Alpha Zombie"
  defp noun("v"), do: "a ruined town"
  defp noun("w"), do: "genetically engineered cats"
  defp noun("x"), do: "flying bears"
  defp noun("y"), do: "an underground labyrinth"
  defp noun("z"), do: "their sense of morality"
end

