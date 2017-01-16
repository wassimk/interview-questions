require 'Benchmark'

# Let's add some caching

time = Benchmark.realtime do
  @cache = {}
  @cache[1] = 1
  @cache[2] = 1

  n = 75

  def fib(n)
    return 1 if n == 1 || n == 2

    @cache[n] ||= fib(n - 1) + fib(n - 2)
  end

  puts "#{n}'s fibonacci value is #{fib(n)}'"
end

puts "Time elapsed #{time} seconds"
