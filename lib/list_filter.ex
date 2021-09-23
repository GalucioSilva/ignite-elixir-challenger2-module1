defmodule ListFilter do
  import Integer

  def call(list), do: countList(list)

  defp countList([head | tail]), do: countOdd(head) + countList(tail)

  defp countList([]), do: 0

  defp countOdd(elem) do
    elem
    |> Integer.parse()
    |> findNumber()
  end

  defp findNumber(:error), do: 0

  defp findNumber({intVal, ""}) do
    intVal
    |> Integer.is_odd()
    |> oddQuanty()
  end

  defp findNumber({_, _}), do: 0

  defp oddQuanty(true), do: 1

  defp oddQuanty(false), do: 0
end
