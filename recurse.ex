defmodule Recurse do
  def sum([head | tail], acc) do
    sum(tail, head + acc)
  end

  def sum([], acc), do: acc

  def triple([head|tail]) do
    [head * 3 | triple(tail)]
  end

  def triple([]), do: []
end

Recurse.sum([1,2,3,4,5], 0)
IO.inspect Recurse.triple([1,2,3,4,5])
