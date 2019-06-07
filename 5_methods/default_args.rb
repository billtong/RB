class SpaceshipFactory
  def produce_spaceship(type = :freighter, size = (type == :freighter ? :xl : :m), engine_count)
    puts type
    puts size
    puts engine_count
  end

  def produce_fleet(days_to_complete = 10, *types)
    puts days_to_complete
    p types
  end
end

SpaceshipFactory.new.produce_spaceship(4)
puts "---"
SpaceshipFactory.new.produce_fleet(10, :freighter, :explorer, 100)