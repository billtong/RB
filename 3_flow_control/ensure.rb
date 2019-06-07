def batten_hatches
  hatch_file = nil #File.open("hatches.txt")
                   # ...
  raise RuntimeError, "Doors jammed"
rescue SystemCallError => e
  puts "Handling system call error: " + e.message
    # handle system call errors
else
  puts "Well done, no exceptions "
ensure
  puts "In ensure"
  hatch_file.close if hatch_file
end

batten_hatches