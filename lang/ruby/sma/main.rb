#$LOAD_PATH.unshift File.expand_path('./lib', __FILE__)
require 'sma'

def now
  return (Time.now.to_f * 1000).to_i
end

def random(min, max)
  return rand(max - min) + min
end

size = 100000
period = 900 # 15 * 60
datapoints = Array.new(size)

for i in 0..size-1
  datapoints[i] = random(50, 100)
end

time_start = now
result = Sma.sma(datapoints, period)
time_end = now
puts "Total time taken: #{time_end - time_start}ms"
puts "Total number of results: #{result.length}"
