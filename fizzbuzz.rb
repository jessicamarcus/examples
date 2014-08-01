def fizz_buzz(num)
  return "FizzBuzz" if num%5 == 0 && num%3 == 0
  return "Fizz" if num%3 == 0
  return "Buzz" if num%5 == 0

  num
end

i = 100

i.times do
  puts fizz_buzz(i)
  i -= 1
end
