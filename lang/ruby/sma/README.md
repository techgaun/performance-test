# Performance Tests

### Simple Moving Average

#### Unit Test
```shell
$ rake test
Run options: --seed 34236

# Running:

..

Finished in 0.000795s, 2516.5305 runs/s, 3774.7957 assertions/s.

2 runs, 3 assertions, 0 failures, 0 errors, 0 skips
```

```shell
$ gem build sma.gemspec
WARNING:  no description specified
WARNING:  See http://guides.rubygems.org/specification-reference/ for help
  Successfully built RubyGem
  Name: sma
  Version: 0.1.0
  File: sma-0.1.0.gem

$ gem install ./sma-0.1.0.gem
Successfully installed sma-0.1.0
Parsing documentation for sma-0.1.0
Done installing documentation for sma after 0 seconds
1 gem installed

$ parallel 'ruby main.rb' ::: {1..20}
Total time taken: 45ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 42ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 36ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 42ms
Total number of results: 99101
Total time taken: 22ms
Total number of results: 99101
Total time taken: 30ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 36ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 42ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 43ms
Total number of results: 99101
Total time taken: 37ms
Total number of results: 99101
Total time taken: 40ms
Total number of results: 99101
```
