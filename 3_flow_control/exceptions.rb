def batten_hatches
  puts "Battening the hatches"
end

def light_seatbelt_sign
  puts "Lighting the seatbelt sign"
end

def launch
  begin
    batten_hatches
  rescue
    puts "Couldn't batten hatches"
    return false
  end
  light_seatbelt_sign
end

def launch
  batten_hatches
  light_seatbelt_sign
  true
rescue StandardError => e
  puts e.message
  false
end

class LightError < StandardError; end

def launch
  batten_hatches
  light_seatbelt_sign
  true
rescue StandardError => e
  puts e.message
  false
rescue LightError => e
  puts "Lights not working, we'll go ahead anyway"
  true
end

class Spaceship
  def launch
    puts "Launching"
  end
end

begin
  ship = Spaceship.new
  ship.launch
rescue Exception => e
  puts e.message
  puts e.backtrace
end

