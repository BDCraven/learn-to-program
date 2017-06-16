title = "Table of Contents"
chapters =  [["Getting Started", 1], ["Numbers", 9], ["Letters", 13]]
line_width = 35

puts title.center(line_width)
puts

chap_num = 1

chapters.each do |chap|
  name = chap[0]
  page = chap[1]

  beginning = "Chapter #{chap_num.to_s}: #{name}"
  ending = "page #{page.to_s}"

  puts beginning.ljust(line_width) + ending.rjust(line_width/2)
  chap_num = chap_num + 1
end
