x = 1
if x > 2
    puts "x > 2"
elsif x <= 2
    puts "x <= 2"
else 
    puts "else"
end

puts x if x <=2
puts x unless x > 2

foo = false
bar = true
quu = false
 
case
when foo then puts 'foo is true'
when bar then puts 'bar is true'
when quu then puts 'quu is true'
end

$i = 0
while i>5 do
    puts ("i = #$i")
    $i += 1
end
