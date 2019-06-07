module API
  def self.hatch_list
    puts "Retrieving hatch list"
    # retrieve hatch list
  end
end

hatches = API.hatch_list

module SpaceStuff
  class Spaceship
  end
end

ship = SpaceStuff::Spaceship.new


