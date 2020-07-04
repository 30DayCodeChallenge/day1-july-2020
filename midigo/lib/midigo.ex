defmodule Midigo do
  @moduledoc """
  Documentation for `Midigo`.
  """

  @doc """
  Counts duplicate characters within a string

  ## Example

      iex> Midigo.duplicates_count("aabbcde")
      2

  """
  @spec duplicates_count(String.t()) :: integer()
  def duplicates_count(word) do
    word
    |> String.graphemes()
    |> Enum.frequencies_by(&String.downcase/1)
    |> Enum.count(fn {_key, value} -> value > 1 end)
  end


  @doc """
  Capitalizes the characters at the given indices
  """
  @spec capitalize(word :: String.t() | List.t(), indices :: List.t())
  def capitalize(word, indices) when is_bitstring(word) do
    word
    |> String.graphemes()
    |> capitalize(indices)
  end

  def capitalize(word, [h | t]) when is_list(word) do
    word
    |> List.update_at(h, &String.capitalize/1)
    |> capitalize(t)
  end

  def capitalize(word, []) do
    to_string(word)
  end
end
