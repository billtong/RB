class Cargo
  def method_missing(name, *args)
    case name
      when /^find_by_([a-z]+)_and_([a-z]+)$/
        find($1.to_sym => args[0], $2.to_sym => args[1])
      when /^find_by_([a-z]+)$/
        find($1.to_sym => args[0])
      else
        super
    end
  end

  def respond_to?(name, *args)
    return true if name =~ /^find_by_([a-z]+|[a-z]+_and_[a-z]+)$/
    super
  end

  private

  def find(attrs)
    puts "Finding cargo by #{attrs.inspect}"
  end
end

class Spaceship
  attr_reader :cargo

  def initialize
    @cargo = Cargo.new
  end
end

ship = Spaceship.new

ship.cargo.find_by_destination("Earth")
ship.cargo.find_by_weight_and_volume(100, 10)
#ship.cargo.find_by_weight_or_volume(100, 10)

puts ship.cargo.respond_to? :find_by_destination
puts ship.cargo.respond_to? :find_by_destination_or_volume
