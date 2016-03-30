require 'test_helper'

class SmaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Sma::VERSION
  end

  def test_it_calculates_correct_sma
      result = Sma.sma([1, 2, 3, 4, 5, 6], 2)
    assert_equal [1.5, 2.5, 3.5, 4.5, 5.5], result
    assert_equal 5, result.length
  end
end
