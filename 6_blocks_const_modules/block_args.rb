def produce
  yield :spaceship, :freighter, :yacht, size: :s, seats: :leather
end

produce do |what = :spaceship, *types,
            size: :m, engine_count: 2, **custom_components|
  puts "Producing #{what}"
  print "Types: "
  p types
  puts "Size: #{size}"
  puts "Engine count: #{engine_count}"
  print "Custom components: "
  p custom_components
end