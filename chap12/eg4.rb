prof = "We tore the universe a new space-hole, altight!"
puts prof[12, 8]
puts prof[12..19]
puts
def is_avi?(filename)
  filename.downcase[-4..-1] == ".avi"
end

puts is_avi?("DMB.AVI")
puts is_avi?("tpf.jpg")
