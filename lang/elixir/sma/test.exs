ExUnit.start

defmodule SMATest do
    use ExUnit.Case
    test 'SMA calculation is correct' do
        result = Math.Summation.sma([1, 2, 3, 4, 5, 6], 2)
        assert result == [0, 1.5, 2.5, 3.5, 4.5, 5.5]
    end
end
