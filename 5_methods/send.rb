class Spaceship
  def method_missing(name, *args)
    puts "Method #{name} called"
  end
end

ship = Spaceship.new

input = :left_arrow

case input
  when :up_arrow then ship.tilt_up
  when :down_arrow then ship.tilt_down
  when :left_arrow then ship.turn_left
  when :right_arrow then ship.turn_right
end

handlers = {up_arrow: :tilt_up, down_arrow: :tilt_down,
            left_arrow: :turn_left, right_arrow: :turn_right}

ship.send(handlers[input])