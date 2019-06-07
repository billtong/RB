p = Proc.new {|bla| puts "I'm a proc that says #{bla}!" }

p.call "yay!"
p.yield "wow!"
p.("nothing")
p["hello"]
