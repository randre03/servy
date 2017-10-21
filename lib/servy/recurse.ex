defmodule Servy.Recurse do

  def triple([h|t]) do
    [h*3|triple(t)]
  end

  def triple([]), do: []

  def my_map([h|t],f) do
    [f.(h) | my_map(t, f)]
  end

  def my_map([],_f), do: []
end

IO.inspect(Servy.Recurse.triple([1,2,3,4,5]))
IO.inspect(Servy.Recurse.my_map([1,2,3], &(&1*2)))
