# Performance Tests

### Simple Moving Average

#### Unit Test
```shell
$ npm test

> simple-moving-average@0.1.0 test /home/samar/fun/performance-test/lang/javascript/sma
> nyc ava


   5 passed

----------|----------|----------|----------|----------|----------------|
File      |  % Stmts | % Branch |  % Funcs |  % Lines |Uncovered Lines |
----------|----------|----------|----------|----------|----------------|
 sma/     |    95.45 |    83.33 |      100 |    95.45 |                |
  sma.js  |    95.45 |    83.33 |      100 |    95.45 |             14 |
----------|----------|----------|----------|----------|----------------|
All files |    95.45 |    83.33 |      100 |    95.45 |                |
----------|----------|----------|----------|----------|----------------|
```

```shell
$ parallel 'node index.js' ::: {1..20}
Total time taken: 13ms
99101
Total time taken: 14ms
99101
Total time taken: 14ms
99101
Total time taken: 15ms
99101
Total time taken: 13ms
99101
Total time taken: 14ms
99101
Total time taken: 15ms
99101
Total time taken: 14ms
99101
Total time taken: 14ms
99101
Total time taken: 13ms
99101
Total time taken: 14ms
99101
Total time taken: 14ms
99101
Total time taken: 13ms
99101
Total time taken: 14ms
99101
Total time taken: 15ms
99101
Total time taken: 14ms
99101
Total time taken: 12ms
99101
Total time taken: 14ms
99101
Total time taken: 14ms
99101
Total time taken: 12ms
99101
```
