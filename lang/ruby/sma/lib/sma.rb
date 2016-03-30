require "sma/version"

module Sma
  def self.sma(datapoints, period)
    len = datapoints.length
    result = Array.new
    tmp_total = 0.0
    i = 0
    for i in 0..period-1
      tmp_total += datapoints[i].to_f
      result.push(nil)
    end
    result.pop
    tmp_total /= period.to_f
    result << tmp_total
    for j in period..len-1
      tmp_total = result[j-1].to_f + ((datapoints[j].to_f - datapoints[j - period].to_f)/ period.to_f)
      result << tmp_total
    end
    result = result.slice(period-1, result.length)
    return result
  end
end
