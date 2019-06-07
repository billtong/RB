class Spaceship
  def initialize
    @debug = true
    @debug_attrs = {containment_status: :ok, core_temp: 350}
  end

  def debug_only
    return nil unless @debug
    return nil unless block_given?
    puts "Running debug code..."
    yield @debug_attrs
  end
end

ship = Spaceship.new

ship.debug_only

ship.debug_only do |attrs|
  puts "Debug attr values: #{attrs.inspect}"
end
