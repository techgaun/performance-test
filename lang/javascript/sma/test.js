import test from 'ava';

const sma = require('./sma').sma;

test(t => {
    const result = sma([1, 2, 3, 4, 5, 6], 2);
    t.same([null, 1.5, 2.5, 3.5, 4.5, 5.5], result);
    t.same(5, result.filter(function(val) {return val !== null}).length);
});

test(t => {
    try {
        const result = sma([], 2);
    }
    catch (e) {
        console.log(e.message);
        t.same(new Error('Period can not be larger than the number of datapoints'), e);
    }
});

test(t => {
    try {
        const result = sma(1, 1);
    }
    catch (e) {
        console.log(e.message);
        t.same(new Error('First argument(datapoints) must be an array'), e);
    }
});

test(t => {
    try {
        const result = sma(1, [1]);
    }
    catch (e) {
        console.log(e.message);
        t.same(new Error('Second argument(period) must be a number'), e);
    }
});
