<?php


$num_points = 100000;
$all_points = array();
$fifteen_minutes = 15*60;

for ( $x = 0; $x < $num_points; $x++)
{
	$all_points[] = rand(1000, 30000) / 100;
}

$temp_total = 0;
$average_points = array();

$time = microtime();

//calculate average
for ( $x = 0; $x < $num_points; $x++)
{
	$temp_total += $all_points[$x];
	
	if($x >= $fifteen_minutes - 1)
	{
//		echo $x . ": " . $temp_total . "<br/>";
		$average_points[] = $temp_total/$fifteen_minutes;
		$temp_total -= $all_points[$x - ($fifteen_minutes - 1)];
	}
}
$end = microtime();
	
echo "took: " . ($end - $time) . "<br/>";
echo "fifteen minutes: " . $fifteen_minutes . "<br/>";
echo "num_points: " . $num_points . "<br/>";
echo "count(all_points): " . count($all_points) . "<br/>";
echo "count(average_points): " . count($average_points) . "<br/>";
echo "last average: " . $average_points[count($average_points) - 1] . "<br/>";

?>