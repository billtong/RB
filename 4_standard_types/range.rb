r = 0..10
puts r.include?(10)

r = 0...10
puts "[#{r.begin}, #{r.end}) includes 10: #{r.include?(10)}"

p (1..10).map { |v| v * 2 }

puts ("aa".."ad").to_a * ", "

r = (1.0..5.0)

sample_reading = 101
puts case sample_reading
     when 0..100 then "below normal"
     when 101..150 then "normal"
     else "excessive"
     end