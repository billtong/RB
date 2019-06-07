/\w+: \d+/

p "Time is 12:13am".scan(/\d+/)

puts "Alex Korban".gsub(/([a-zA-Z]+) ([a-zA-Z]+)/, '\2, \1')

s = "Password: bla12"
puts s.gsub(/(Password:)\s+(\w+)/) { |match| "#{$1} " + "*" * $2.length }