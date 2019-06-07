class SpaceshipFactory
  def produce_spaceship(type = :freighter, size: :m, **custom_components)
    components = {engine: :standard, seats: :standard, subwoofer: :none}
    components.merge!(custom_components)
    # ...
    puts type
    puts size
    p components
  end
end

build_params = {size: :s, engine: :rolls_royce, seats: :leather}
SpaceshipFactory.new.produce_spaceship(:yacht, build_params)
puts "---"
SpaceshipFactory.new.produce_spaceship
puts "---"
custom_components = {seats: :leather}
SpaceshipFactory.new.produce_spaceship(:yacht, size: :s, **custom_components)
