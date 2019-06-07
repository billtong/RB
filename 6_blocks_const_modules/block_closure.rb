$debug = true

def debug_only
  yield if $debug && block_given?
end

class Spaceship
  def initialize
    @debug_attrs = {containment_status: :ok, core_temp: 350}
  end

  def launch
    debug_only { p @debug_attrs }
  end
end

Spaceship.new.launch

