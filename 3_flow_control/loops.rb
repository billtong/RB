def high_alert?
  false
end

class SoundSystem
  def play_siren_cycle
    puts "eeeeiii"
  end
end

sound_system = SoundSystem.new

while high_alert?
  sound_system.play_siren_cycle
end

while high_alert? do sound_system.play_siren_cycle end

sound_system.play_siren_cycle while high_alert?


class Spaceship
  def at_cruising_velocity?
    true
  end

  def accelerate
    puts "Accelerating"
  end
end

ship = Spaceship.new

until ship.at_cruising_velocity?
  ship.accelerate
end

until ship.at_cruising_velocity? do ship.accelerate end

ship.accelerate until ship.at_cruising_velocity?

class LightSystem
  def start_flashing
    puts "Flashing"
  end
end

def make_fake_engine_noise
  puts "Chugga chugga chugga"
end

lighting = LightSystem.new

begin
  lighting.start_flashing
  sound_system.play_siren_cycle
end while high_alert?

begin
  ship.accelerate
  make_fake_engine_noise
end until ship.at_cruising_velocity?

puts "Counting down to launch"
for i in [3, 2, 1]
  puts i
end

# print numbers from 1 to 10
for i in (1..10)
  puts i
end
