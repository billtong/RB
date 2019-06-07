h = {}

h = Hash.new { 0 }
puts h[:a]


h = {a: "a", b: "b", c: "c"}

puts "Key-value element arrays: "
h.each { |el| p el }

puts "Keys and values: "
h.each { |k, v| puts "#{k}: #{v}" }


