def do_until_false(first_input, some_proc)
  input = first_input # [5]
  output = first_input # [5]

  while output # while output is true (until the proc returns false)
    input = output
    output = some_proc.call(input) #output is calling the proc below on the object
    # input which is [5] and setting output to the result of that call which is
    # an array with [25, 4]
  end
  input # at the end of the while loop we return input which has been updated
  # with the new array.

end

build_array_of_squares = Proc.new do |array|
  last_number = array.last # there is only one number in the example and it is 5
  if last_number <= 0 # 5 is greater so this is not false but when it reaches 0
    # it will return false which will mean output above is false stopping the
    # while loop.
    false
  else
    array.pop # pop 5 off the array
    array.push (last_number*last_number) # push 5 * 5 to the array
    array.push (last_number -1) # push 4 to the array
  end
end
always_false = Proc.new do |just_ignore_me|
  false
end
puts do_until_false([5], build_array_of_squares).inspect
yum = "lemonade with a hint of orange blossom water"
puts do_until_false(yum, always_false)
