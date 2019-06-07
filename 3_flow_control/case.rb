class Lander
  def maintain_thrust
    puts "Maintaining thrust"
  end
  def reverse_thrust
    puts "Reversing thrust"
  end
end

class Probe; end

lander = Lander.new

distance_to_dock = "far away"

case distance_to_dock
  when "far away"
    lander.maintain_thrust
  when "coasting time"
    lander.kill_thrust
  when "collision imminent"
    lander.reverse_thrust
end

thrust_power = case distance_to_dock
                 when "far away"
                   100
                 when "coasting time"
                   0
                 when "collision imminent"
                   -100
               end

thrust_power = case distance_to_dock
                 when "far away" then 100
                 when "coasting time" then 0
                 when "collision imminent" then -100
               end



def activate_alarm(message)
  puts "Alarm: " + message
end

unit = Object.new

case unit
  when Lander
    lander.park
  when Probe
    probe.retrieve_sample
    probe.transport_to_storage
  else
    activate_alarm("Unidentified unit")
end

distance_to_dock = 1
case
  when distance_to_dock > 100
    lander.maintain_thrust
  when distance_to_dock > 2
    lander.kill_thrust
  else
    lander.reverse_thrust
end
