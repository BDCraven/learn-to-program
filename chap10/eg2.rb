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

puts factorial(4)
# 4 * factorial(3)evaluates to a call to factorial(num) with 3 as num -1
# 3 * factorial(2)
# 2 * factorial(1)
# num then equals 1 so returns 1 exiting the method and stopping the
# recursive loop is equivalent to telling the computer to do 4 * 3 * 2 * 1
# = 24
puts factorial(5) # should equal 120
# 5 * factorial(5-1)
# 4 * factorial(3)
# 3 * factorial(2)
# 2 * factorial(1)
# num is now 1 so we return 1 (append 1 to our algorithm) and exit the method
# so 5 * 4 * 3 * 2 * 1 = 120
puts factorial(3)
# puts factorial(30)
# the factorial of an integer is the product
# of all the integers from itself down to 1
# e.g. 3 x 2 x 1 = 6
