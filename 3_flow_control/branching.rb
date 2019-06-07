def can_launch?
  true
end

def launch
  puts "Launching"
end

def wait
  puts "Waiting"
end

if can_launch?
  launch
else
  wait
end

lander_count = 5
message = if lander_count > 10 then "Launching" else "Waiting" end

launch if can_launch?

def set_fuel_light(color)
  puts "Setting fuel light to " + color
end

fuel_level = 30

if fuel_level > 50
  set_fuel_light("green")
elsif fuel_level > 25
  set_fuel_light("yellow")
else
  set_fuel_light("red")
end

unless fuel_level < 25
  launch
end

launch unless fuel_level < 25

can_launch? ? launch : wait


