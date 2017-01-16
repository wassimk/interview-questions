require 'Benchmark'

# How fast is it?

time = Benchmark.realtime do
  n = 7

  def fib(n)
    return 1 if n == 1 || n == 2

    fib(n - 1) + fib(n - 2)
  end

  puts "#{n}'s fibonacci value is #{fib(n)}'"
end

puts "Time elapsed #{time} seconds"
