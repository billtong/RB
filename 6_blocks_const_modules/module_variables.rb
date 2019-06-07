module AirControl
  attr_accessor :oxygen_level

  def measure_oxygen
    # ...
    self.oxygen_level = measured_value
  end

  def start_pump
    @pump_status = :started
  end
end

class Spaceship
  include AirControl
end

ship = Spaceship.new

ship.start_pump
ship.oxygen_level = 10
p ship
