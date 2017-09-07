def func(x)
  Math.sqrt((2+3*x)**3)/3
end
n = 30

a = 1
b = 2

integral = 0
h = (b-a).to_f/n
x = a

0.upto(n-1) do |i|
  integral += func(x)
  x += h
end

puts "Integral value is: #{integral * h}"
