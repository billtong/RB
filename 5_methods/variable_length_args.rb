class SpaceshipFactory
  def produce_fleet(days_to_complete = 10, *types)
    puts days_to_complete
    p types
  end
end

ship_types = [:freighter, :freighter, :explorer]
SpaceshipFactory.new.produce_fleet(10, *ship_types)