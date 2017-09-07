def func(x)
  return Math.log(x)+Math.cos(x/4.to_f)
end

a = 0.1
b = 3
puts 'Enter percision: '
e = gets.chomp.to_f

if e.is_a?(Numeric) && e > 0
  while(b - a > 2*e) do
    x = (a+b).to_f/2
    left_value = func(a)
    right_value = func(x)
    puts "a is #{right_value}"
    puts "b is #{left_value}"
    left_value * right_value > 0 ? a = x : b = x
  end
  puts "X: #{(a+b)/2}, F(X): #{func(((a+b)/2).to_f)}"
else
  puts 'You have entered wrong percision(it is not float)!'
end
