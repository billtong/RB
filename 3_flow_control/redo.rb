i = 0
while i < 3
  print "Please enter a positive number: "
  input = gets.to_i
  redo if input <= 0
  i += 1
end