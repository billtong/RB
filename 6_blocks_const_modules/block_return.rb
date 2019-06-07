class Spaceship
  attr_reader :name
  def initialize(name)
    @name = name
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

ship = Spaceship.new("Dreadnought")

ship.debug_only do |attrs|
  return if ship.name != "Serenity"  # error reason: the return is executed at the outmost scope, not with the method it envokes the block
  p attrs
end