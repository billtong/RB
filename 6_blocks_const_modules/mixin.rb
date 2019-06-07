module Docking
  module ClassMethods
    def get_docking_params
      # returns params common to all spaceships
      puts "Returning docking params"
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def dock
    puts "Docking"
    # ...
  end
end

class Spaceship
  include Docking
end

Spaceship.get_docking_params
ship = Spaceship.new
ship.dock
