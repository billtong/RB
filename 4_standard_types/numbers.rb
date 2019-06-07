puts 0xAF    # decimal 175
puts 010     # decimal 8
puts 0o10    # decimal 8
puts 0d175   # decimal 175
puts 0b1010  # decimal 10

puts 100_999
puts 0b1010_1111_0110

puts (2.0 + 30).class


def f(n)
  n += 100
end

a = 10
puts "f(a) = #{f(a)}"
puts "a = #{a}"