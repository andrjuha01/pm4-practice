def func(x)
  Math.log(x)+Math.cos(x/4.to_f)
end

def devirative(x)
  (1/x.to_f) - sin((x/4).to_f) / 4
end

def next_value(prev)
  z = prev + func(prev)
  prev - func(prev)*func(prev).to_f/(func(z)-func(prev))
end

prev = 0.5
x = next_value(prev)
puts 'Enter percision: '
e = gets.chomp.to_f
puts "First approximation is: #{prev}"

if e.is_a?(Numeric) && e > 0
  while(((x-prev)/x).abs > e) do
    prev = x
    x = next_value(prev)
    puts "Next step is #{x}"
  end
  puts "X: #{x}, F(X): #{func(x)}"
else
  puts 'You have entered wrong percision(it is not float)!'
end
