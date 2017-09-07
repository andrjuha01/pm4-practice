def func(x)
  x - 0.5 * x ** 2 + x ** 3 - 0.5 * x
end

puts 'Enter a: '
a = gets.chomp.to_f
puts 'Enter b: '
b = gets.chomp.to_f
puts 'Enter N: '
N = gets.chomp.to_f
if a.is_a?(Numeric) && b.is_a?(Numeric) && N.is_a?(Numeric) && N > 0
  min = (a+b).to_f/(N+1)
  fmin = func(min)
  2.upto(N.to_i) do |i|
    temp = (a+b).to_f/(N+i)
    if func(temp) < fmin
      min = temp
      fmin = func(temp)
    end
  end
  puts "Minimum x: #{min}, Minimum L is: #{fmin}"
else
  puts 'You have entered wrong data!'
end
