=begin
author: Bill Tong
ruby environment test file
=end

BEGIN {   #起始程序
  puts "begin"
}

END {   #结束程序
  puts "end"
}

print <<"a", <<"b"
  line a
a
  line b
b

File.open("./text.txt", "w") do |io|
  io.write("aaa")
end