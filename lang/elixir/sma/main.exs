alias Math.{Rand, Summation}

num_points = 100_000;
fifteen_minutes = 15*60;
Rand.seed_random

all_points = Enum.map(1..num_points, fn _ -> Math.Rand.get_random end)

time_start = :os.system_time(:milli_seconds)
calculated_points = Summation.sma(all_points, fifteen_minutes)
time_end = :os.system_time(:milli_seconds);

# IO.inspect(calculated_points)
IO.puts("Total elements:");
IO.puts(length all_points);
IO.puts("Total time: ");
IO.puts((to_string (time_end - time_start)) <> "ms");
