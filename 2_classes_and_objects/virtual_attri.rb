class Movie
  def initialize(name, duration_in_minutes)
    @name = name
    @duration = (duration_in_minutes * 60).to_i
  end

  def duration_in_minutes
    @duration / 60.0
  end

  def duration_in_minutes=(value)
    @duration = (value * 60).to_i
  end
end

a = Movie.new("gds", 1.2)
puts a.duration_in_minutes
a.duration_in_minutes = 1.1
puts a.duration_in_minutes
