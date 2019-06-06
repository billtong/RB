class B
  private
  def m1
    puts "this is the first method"
  end
end

ship1 = B.new

class B
  def m2
    m1      # there is no visibility restrictions here
    puts "this is the second method"
  end
end

ship1.m2