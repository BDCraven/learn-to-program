#puts "Please enter some words for me to sort. Press enter after each word and when you're done press enter on an empty line."
#word = "x"
#words = []
#while word != ""
#  word = gets.chomp
#  if word != ""
#  words << word
#  end
#end

#if !words.empty?
#  puts "Here are your words sorted alphabetically: #{words.sort.join(", ")}"
#end

puts "Please enter some words for me to sort. Press enter after each word and when you're done press enter on an empty line."
words = []
while true
  word = gets.chomp
  if word != ""
    words << word
  else
    break
  end
end

if !words.empty?
  puts "Here are your words sorted alphabetically: #{words.sort.join(", ")}"
end
