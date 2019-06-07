class Lander
  def self.locate(id)
    nil
  end

  def recall
    puts "Recalling lander"
  end
end

lander_id = 42
lander = Lander.locate(lander_id) and lander.recall

lander = Lander.locate(lander_id)
lander.recall if lander

class Engine
  def cut_out?
    true
  end

  def restart
    puts "Restarting engine"
  end
end

def enable_emergency_power
  puts "Enabling emergency power"
end

engine = Engine.new

if engine.cut_out?
  engine.restart or enable_emergency_power
end

if engine.cut_out?
  enable_emergency_power unless engine.restart
end
