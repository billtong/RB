class Spaceship
  attr_reader :name
  attr_reader :speed

  def initialize(name)
    @name = name
    @cargo = []
    @speed = 0
    @vessels = Hash.new { [] }
  end

  def [](type)
    @vessels[type]
  end

  def []=(type, vehicles)
    @vessels[type] = vehicles
  end

  def <<(cargo)
    @cargo << cargo
  end

  def <=>(other)
    name <=> other.name
  end

  def +@
    @speed += 10
  end

  def -@
    @speed -= 10
  end

  def !
    puts "Self destruct sequence initiated"
  end
end

ship1 = Spaceship.new("Serenity")

class Lander; end
ship1[:landers] = [Lander.new, Lander.new]
puts "Landers: #{ship1[:landers].inspect}"


class CargoPod; end
cargo_pod = CargoPod.new
ship1 << cargo_pod
p ship1


ship2 = Spaceship.new("Dreadnought")
ship3 = Spaceship.new("Tranquillity")

p [ship1, ship2, ship3].sort.map {|s| s.name }


+ship1
puts "Speed: #{ship1.speed}"
-ship1
puts "Speed: #{ship1.speed}"

!ship1

if !ship1
  puts "Ship isn't there"
end
