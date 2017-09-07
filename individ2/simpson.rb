def func(x)
  Math.sqrt((2+3*x)**3)/3
end
m = 10
n = 2 * m

a = 1
b = 2

integral = 0
h = (b-a).to_f/n
x = a
fa = func(a)
fb = func(b)

1.upto(m) do |i|
  x = a + (2 * i - 1) * h
  integral += 4 * func(x)
end

1.upto(m-1) do |i|
  x = a + 2 * i * h
  integral += 2 * func(x)
end

puts "Integral value is: #{h * (fa+fb+integral).to_f / 3}"
