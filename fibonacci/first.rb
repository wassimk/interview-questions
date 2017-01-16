# Fibonacci Sequence

n = 7

def fib(n)
  return 1 if n == 1 || n == 2

  fib(n - 1) + fib(n - 2)
end

puts "#{n}'s fibonacci value is #{fib(n)}'"
