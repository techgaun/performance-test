defmodule Math.Summation do
    def sum(list, acc \\ 0)

    def sum([], total) do
        total
    end
    def sum([head|tail], total) do
        sum(tail, head + total)
    end

    def sma(points, window) do
      [first | _] = points
      {first_window, rest} = Enum.split(points, window)
      first_total = sum(first_window)
      first_avg =  first_total / window

      Enum.reverse( do_sma(rest, [first_avg], first_total, first, window) )
    end

    defp do_sma([next|rest], acc, last_total, last_next, window) do
      last_total = last_total + next - last_next
      sma = last_total / window
      do_sma(rest, [ sma | acc], last_total, next, window )
    end

    defp do_sma([], acc, _last_total, _last_next, _window) do
      acc
    end
end
