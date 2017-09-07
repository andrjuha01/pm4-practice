def func(x)
  Math.log(x)+Math.cos(x/4.to_f)
end

def g(x)
  Math.exp(-Math.cos(x/4))
end

def devirative(x)
  (1/x.to_f) - sin((x/4).to_f) / 4
end


prev = 3
puts 'Enter percision: '
e = gets.chomp.to_f
puts "First approximation is: #{prev}"
x = g(prev)
if e.is_a?(Numeric) && e > 0
  while(((x-prev)/x).abs > e) do
    prev = x
    x = g(prev)
    puts "Next step is #{x}"
  end
  puts "X: #{x}, F(X): #{func(x)}"
else
  puts 'You have entered wrong percision(it should be float or > 0)!'
end
