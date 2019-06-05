class Spaceship
    def launch(dest)
        @dest = dest
    end

    def getDest
        @dest
    end
end

ship = Spaceship.new
ship.launch("Moon")
p ship
#also work
#puts ship.inspect

puts ship.getDest