# Classes and Objects
## Creating Classes, Instantiating Object
```ruby
class Spaceship
end
ship = Spaceship.new
```
- Class names start with a capital letter and use CamelCase
- Capitalize abbreviations: XMLParser, JSONRequest
## Instance Variables and Methods
```ruby
class Spaceship
    def launch(destination)
        @destination = destination
    end
end
```
- `@` is for instance variables, destination variable appear when the launch method is called.
- inspect and p methods allow yu to take a look inside objects
- instance variables are private while methods are public by default
## Accessors
```ruby
class Spaceship
    attr_accessor :destination, :others
    attr_reader :name
    attr_writer :name
    def cancel_launch
        others = "" #creates local variable
        self.others = "" call accessor others
    end
end
ship = Spaceship.new
ship.destination = "Mars"
puts ship.destination
```
- virtual attribute accessing methods do not have to be just simple wrappers around an object's instance variables. 
## Initialize
- GC will handle object destroy
## Inheritance
- Inheritance is for reusing functionality, not enforcing interfaces due to duck typing
## Class methods and Class Variables(BAD)
```ruby
class Spaceship
    @@thruster_counter = 2
    def self.thruster_count
        @@thruster_counter
    end
end
Spaceship.thruster_count
```
- every classes of spaceship includes its subclass share one class variables
## Class Instance Variables(BETTER Solution compare to Class Variables)
```ruby
class Spaceship
    @thruster_counter = 2
    def self.thruster_count
        @thruster_counter
    end
end
Spaceship.thruster_count
```
- each classes of spaceship have one counter respectively
## Method Visibility
```ruby
# declare after the method
class Spaceship
    def m1
    end
    def m2
    end
    private: m2
    def m3
    end
end
Spaceship.thruster_count
```
```ruby
class Spaceship
    def m1
    end
    private #m2 & m3 private
    def m2
    end
    def m3
    end
end
Spaceship.thruster_count
```
```ruby
class Spaceship
    def m1
    end
    def m2
    end
    def m3
    end
    private :m1, :m3
end
Spaceship.thruster_count
```
- public is default
- private means can't be called with an explicit receiver
- private_class_method is private for class methods
- protected means allow access for other objects of the same class
- private and protectd not used a whole lot
## Executable Class Bodies
## self
```ruby
class Spaceship
    @thruster_counter = 2
    def self.thruster_count # self==Spaceship
        @thruster_counter
    end
    def cancel_launch
        self.destination = "" #slef==ship sames as callig the obeject
    end
end
Spaceship.thruster_count
```
## Open Class & Monkey patching
- to fix bug in thrid party library
## Equality
