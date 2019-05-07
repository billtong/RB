=begin
about the numbers in ruby 
=end

puts "Fixnum: from #{-2**30} to #{2**30 - 1}"
puts "Bignum: from #{-2**62} to #{2**62 - 1}"
puts "binary: #{0b1001}"
puts "oct: #{0377}"
puts "hex: #{0xff}"

name = "Ruby"
puts "multiply: #{2*2*2}"
puts "#{name + ", good"}"

#array type
ary = ["str", 10, 3.14]
ary.each do |i|
  puts i 
end

#hash type
hsh = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key, " is ", value, "\n"
end

#range type
(1..10).each do |i|
  print i, ' '
end 