p [1, "Z", Object.new]

a = []

a = Array.new(3)

print "Shared default value: "
a = Array.new(3, "abc")
a.first.upcase!
p a

print "Block form of new: "
a = Array.new(3) { "abc" }
a.last.upcase!
p a

print "Two dimensional array: "
a = Array.new(3) { Array.new(3) }
p a

a = %i(up down left right)
p a

puts "Size: #{a.size}, is empty: #{a.empty?}"
puts "First element: #{a[0]}"
puts "Last element: #{a[-1]}"

print "Slice: "
p a[1..-2]

print "Replaced slice: "
a[1..-2] = ["Replaced", "Replaced"]
p a

a << :appended

print "Array operators: "
p [1, 2] + [3, 4, 5] * 2 - [1, 5]