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

  def locate_cargo
    attrs = {weight: 10, destination: "Earth"}
    debug_only do |d_attrs; attrs|  #declare a local vars attrs
      attrs = {}
      attrs[:cargo_accessed] = true
    end
    p attrs
    p @debug_attrs
  end
end

ship = Spaceship.new
ship.locate_cargo