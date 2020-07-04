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
end
