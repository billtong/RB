class Spaceship
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def ==(other)
    name == other.name
  end
end

ship1 = Spaceship.new("s1")
ship2 = Spaceship.new("s1")

puts ship1 == ship1