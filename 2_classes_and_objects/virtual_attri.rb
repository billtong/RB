class Movie
    def initialize(name, durationInMinutes)
        @name = name
        @duration = (durationInMinutes*60).to_i
    end

    def durationInMinutes
        @duration/60.0
    end
    def durationInMinutes=(value)
        @duration = (value*60).to_i
    end
end

a = Movie.new("gds", 1.2)
puts a.durationInMinutes
a.durationInMinutes = 1.1
puts a.durationInMinutes
