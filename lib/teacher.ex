
defmodule Teacher do
require Logger

def short_pass() do
  Logger.warn("Short password generate, but long passwords are encouraged are encouraged")
  generate_pass(word_length: 4, list: :short)
end

def long_pass() do
  generate_pass(word_length: 8, list: :long)
end

defp generate_pass(word_length: word_length, list: list) do
  %{}
  |> Map.merge(%{words: word_length})
  |> Map.merge(%{list: list})
  |> Enum.map(fn {key, value} -> {key, value} end)
  |> EFFPass.gen()
end


end
