lander_count = 10
probe_count = 20
puts "Lander count: #{lander_count}"
puts "Total units: #{lander_count + probe_count}"

message = <<-EOS
          There's no place I can be
          since I found serenity
EOS
puts message

puts "con" "cat" "enate"

puts "multi
      line string"

puts "String [] operator: "
puts "Hello world"[1]
puts "Hello world"[1, 3]
puts "Hello world"["or"]

puts "Replace substring: "
s = "Hello Alex"
s["Alex"] = "George"
puts s

puts "Other operators: "
puts "ha " * 3
puts "%05d" % 123
puts "%.8g" % 123.34534534
puts "ab" + "cd"

puts "String contents: "
s = "~ 5\u{20ac}"
p s.chars
p s.codepoints
p s.bytes

puts "Case conversions: "
puts "hello".upcase
s = "HELLO"
s.downcase!
puts s

puts "Substitution: "
puts "<strong><em>Hi!</em></strong>".gsub("<", "[").gsub(">", "]")

puts "Extract elements: "
p "1->2->3".split("->")