def factorial(num)
  if num < 0
    return "You can't take the factorial of a negative number!"
  end
  if num <= 1
    1
  else
    num * factorial(num-1) # num is being multiplied by what factorial
    # (num-1) evaluates
  end
end

puts factorial(3)
# 4 * factorial(3)evaluates to a call to factorial(num) with 3 as num
# so it is saying 3 the return value of the method until  

3 * factorial(2) returns 6 but calls the method again
# 2 * factorial(1) returns 1
# num then equals 1 so returns 1
# 4 * 6 * 1 = 24
# puts factorial(5)
# 5 * 4
# 4 * 3 returns 12
# 3 * 2 returns 6
# 2 * 1 returns
# puts factorial(3)
# puts factorial(30)
# the factorial of an integer is the product
# of all the integers from itself down to 1
# e.g. 3 x 2 x 1 = 6
#
