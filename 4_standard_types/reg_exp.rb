result = /\d+/ =~ "Level 3"
puts result
result = /\d+/ =~ "asdfasdf"
puts result.class
result = /\d+/ !~ "Level 4" 
puts result

m = /(\d+):(\d+)/.match("Time is 10:30am; Time is 20:30am")
p m

p "Time is 10:30am; Time is 20:30am".scan(/(\d+):(\d+)/)