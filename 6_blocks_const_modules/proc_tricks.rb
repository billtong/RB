names = ["bill", "tom", "ruby"]
p names.map {|value| value.upcase}

#by using ampersand, it coarse :upcase symbol into a procs
p names.map(&:upcase)