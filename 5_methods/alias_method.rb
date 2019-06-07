class String
  def space_out
    chars.join(" ")
  end

  alias_method "original_size", "size"

  def size
    original_size * 2 - 1
  end
end

puts "abc".space_out
puts "abc".size