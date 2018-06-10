defmodule PostApocalypticNovelGenerator.Hero do

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
    [adjective, noun] = string
                  |> String.downcase
                  |> String.split("", trim: true)
                  |> Stream.cycle
                  |> Stream.drop(2)
                  |> Enum.take(2)
    {adjective(adjective), noun(noun)}
  end

  defp adjective("a"), do: "pregnant"
  defp adjective("b"), do: "ragged"
  defp adjective("c"), do: "superpowered"
  defp adjective("d"), do: "solitary"
  defp adjective("e"), do: "rogue"
  defp adjective("f"), do: "mutant"
  defp adjective("g"), do: "drug-addicted"
  defp adjective("h"), do: "immune"
  defp adjective("i"), do: "cybernetic"
  defp adjective("j"), do: "time-traveling"
  defp adjective("k"), do: "nihilistic"
  defp adjective("l"), do: "rebellious"
  defp adjective("m"), do: "pious"
  defp adjective("n"), do: "sociopathic"
  defp adjective("o"), do: "grief-stricken"
  defp adjective("p"), do: "murderous"
  defp adjective("q"), do: "clairvoyant"
  defp adjective("r"), do: "half-dead"
  defp adjective("s"), do: "cyberpunk"
  defp adjective("t"), do: "resourceful"
  defp adjective("u"), do: "determined"
  defp adjective("v"), do: "wealthy"
  defp adjective("w"), do: "demoralized"
  defp adjective("x"), do: "resilient"
  defp adjective("y"), do: "criminal"
  defp adjective("z"), do: "nudist"

  defp noun("a"), do: "reality TV star"
  defp noun("b"), do: "Millennial"
  defp noun("c"), do: "mother"
  defp noun("d"), do: "socialite"
  defp noun("e"), do: "scientist"
  defp noun("f"), do: "mystic"
  defp noun("g"), do: "band of misfits"
  defp noun("h"), do: "journalist"
  defp noun("i"), do: "teen"
  defp noun("j"), do: "deposed princess"
  defp noun("k"), do: "monk"
  defp noun("l"), do: "middle manager"
  defp noun("m"), do: "conspiracy theorist"
  defp noun("n"), do: "road warrior"
  defp noun("o"), do: "mailman"
  defp noun("p"), do: "grifter"
  defp noun("q"), do: "time traveler"
  defp noun("r"), do: "social worker"
  defp noun("s"), do: "musician"
  defp noun("t"), do: "Shakespeare troupe"
  defp noun("u"), do: "linguist"
  defp noun("v"), do: "boy and his dog"
  defp noun("w"), do: "soldier"
  defp noun("x"), do: "doomsday prepper"
  defp noun("y"), do: "family"
  defp noun("z"), do: "herbalist"
end
