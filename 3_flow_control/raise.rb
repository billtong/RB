begin
  raise "Ooh, error!"
rescue
  puts "Rescued something"
end

begin
  raise "Ooh, error!"
rescue RuntimeError => e
  puts "Rescued something #{e.message}"
end

class NonStandardError < StandardError; end

begin
  raise NonStandardError
rescue NonStandardError
  puts "Rescued non-standard error"
end

begin
  raise NonStandardError, "Non-standard!"
rescue NonStandardError => e
  puts "Rescued non-standard error: " + e.message
end

begin

  begin
    raise NonStandardError
  rescue NonStandardError
    raise
  end

rescue
  puts "Rescued something"
end


class Spaceship
  def batten_hatches
    #raise "Arr!"
  end

  def light_seatbelt_sign
    raise RuntimeError, "Burnt out lightbulb"
  end

  def launch
    begin
      batten_hatches
    rescue
      puts "Couldn't batten hatches"
      return false
    end
    light_seatbelt_sign
    true
  end

  def launch
    batten_hatches
    light_seatbelt_sign
    true
  #rescue RuntimeError => e
  #  puts "Lights not working, we'll go ahead anyway"
  #  puts e.backtrace
  #  true
  rescue StandardError => e
    puts "Exception intercepted: #{$!.message}"
    #raise
    false
  end
end

ship = Spaceship.new
ship.launch

