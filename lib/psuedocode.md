invalid by default

any integer % 10 gets the rightmost digit

irb(main):001:0> x=1234
=> 1234
irb(main):002:0> x = x.to_s.split('')
=> ["1", "2", "3", "4"]

iterate through -1, -3, -5, -7 etc. based on array length


from right to left
double the value of every second digit
convert digit to array, iterate through every other index backwards
double every other
  if the product is two digits, add them together
  if number[i].to_s.size = 2
  number[i]/10 = first digit
  number[i] % 10 = second digit
  number[i] = (number[i] / 10) + (number[i] % 10)

  check if there are two digits after converting to the array, and if so, add them together

sum all digits together

sum = number[i] + ...

if the total is equal to % 10, then it is valid

else

false
