const sma = require('./sma').sma;

function random_number(min,max) {
    return (Math.round((max-min) * Math.random() + min));
}

function now() {
    return Math.floor(new Date());
}

var datapoints = new Array();
var size = 100000;
var period = 900; // 15*60

for (var i = 0; i < size; i++) {
    datapoints.push(random_number(50, 100));
}

var time_start = now();
var result = sma(datapoints, period);
console.log('Total time taken: ' + (now() - time_start));
console.log(result.filter(function(val) {return val !== null}).length);
