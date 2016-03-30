'use strict';

/*
 * Author: techgaun
 * Date: 04/30/2016
 */

function sma (datapoints, period) {
    if (Object.prototype.toString.call(datapoints) !== '[object Array]') {
        throw new Error('First argument(datapoints) must be an array');
    }

    if (typeof period !== 'number') {
        throw new Error('Second argument(period) must be a number');
    }

    var len = datapoints.length;

    if (period > len) {
        throw new Error('Period can not be larger than the number of datapoints');
    }

    var result = new Array();
    var tmp_total = 0;
    var i = 0;
    for (i = 0; i < period; i++) {
        tmp_total += datapoints[i];
        result.push(null);  // feeding null for initial parts
    }
    result.pop(null);   // last null should be taken out
    tmp_total /= period;
    result.push(tmp_total);

    for (var j = i; j < len; j++) {
        var tmp_total = result[j - 1] + ((datapoints[j] - datapoints[j - period])/period) ;
        result.push(tmp_total);
    }
    return result;
}

module.exports.sma = sma;
