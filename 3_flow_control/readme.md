# Flow Control
## True and False
- Only false and nil evaluate false; everything else are true
## if else
```ruby
if can_something?
 #do something
else
 #do somethind
end
```
```ruby
message = if can_somethind? then "A" else "B" end
rslt = if can_something?
```
```ruby
if can_something1?
 #do something
elsif can_something2?
 #do something
end
```
## unless
- if not condition is equivalent to unless condition
```ruby
unless fuel_level < 25
 do_somethind
end
```
```ruby
launch unless fuel_level < 25
```
## Ternary operator ?:
## Conditional Initialization
```ruby
ship ||= Spaceship.new 
# same as
ship || ship = Spaceship.new 
# also can be written as below
ship = Spaceship.new unless ship
```
## and, or vs &&, ||
- and, or have much lower precedence than &&, ||
- && has higher precedence than ||
- and, or have the same precedence
## flow controll with and, or
- `and` if the first operation returns true do the seconde operation
- `or` if the first operation operation returns false, then try the secode one and so on
```ruby
lander = Lander.locate(land_id) and lander.recall
# same as below
lander = Lander.locate(lander_id)
lander.recall if lander 
```
```ruby
if engine.cut_out?
  enable_emergency_power unless engine.restart
end
# same as belw
 if engine.cut_out?
   engine.restart or enable_emergency_power
 end
```
## case Statement
- case use `==` to compare variables
```ruby
case distance_to_dock
when "far away"
  # do something
when "coasting time"
  # do something
when "collision imminent"
  # do something
else 
  # do something 
end
```
```ruby
reslt = case distance_to_dock
when "far away"
  # do something
when "coasting time"
  # do something
when "collision imminent"
  # do somethings 
end
```
```ruby
reslt = case distance_to_dock
when "far away" then 1
when "coasting time" then 2
when "collision imminent" then 3
end
```
## Looping: while
```ruby
while is_a?
  #do somethind
end
```
```ruby
while is_a? do something end
```
```ruby
somthing while is_a?
```
## Looping: until
- equivalent to while not
## Looping: begin/end
- using this loop, the block will be operated at least once
```ruby
begin
  do_something
end while is_a?
```
```ruby
begin
  do_something
end until is_a?
```
## Looping: for
```ruby
for i in [1, 2, 3]
  puts i
end
```
```ruby
for i in (1..2)
  puts i
end
```
## Iterators and Blocks
- each is called iterator
- do ... end is called block
```ruby
(1..3).each do
  puts
end
```
```ruby
ships = Spaceship.all
ships.each { |ship| puts ship.name }
```
## Looping: loop
```ruby
loop do
  #do something
end
```
## Looping: Some help from Numbers
```ruby
10.upto(20) {|i| puts i}
20.downto(10) {|i| puts i}
3.times {puts "something"}
1.step(10,2) {|i| puts i}
```
## Loop Flow
- `next` start the next iteration of loop
```ruby
while is_a?
  next if is_b? # go to while condition line
  somthing
end
```
- `break` exits out of the loop
```ruby
while is_a?
  something
  break if is_b?  # go to the line after end
end
```
- `redo` repeats teh iteration without re-evaluating loop condition
- deals with invalid input
```ruby
while is_a?
  something1
  redo if is_b #go to somthing 1 line
  something2
end
```
## Exceptions
- `RuntimeError` < `StandardError` < `Exception`
```ruby
def launch
  begin
    something1
  rescue        # catch error in something1
    puts "error"
    return false    
  end
  something2
end
```
```ruby
def launch
  something1
  something2
  something3
  true
rescue StandardError => e    #handle 1-3 method error
  puts e.message
  false
end
```
## Raising Excepitons
```ruby
def method1
 #...
 raise HatchError, "hatch error" #runtime error
 #... 
end
```
## Re-Raising Exceptions
- by using raise method with arguments, it will raise the exceptions stored in the special global variable(dollar exclamation mark)
- `$!` refers to the last raised exception
```ruby
rescue HatchError => err
  puts $!.message 
  raise
end
```
## Cleanup: ensure
- ensure has to come after the resuce clauses
```ruby
def method1
 fiel = File.open("a.txt")
 raise HatchError, "hatch error" if something?
 true
rescue SystemCallError => e
  false
else
 puts "file open success"          # if it didn't throw any exceptions
ensure
   file.close if file     # will always be called
end
```
## Retrying
```ruby
def get_list
  list = API.request("/list")
rescue RuntimeError => e
  attempts ||= 0
  attempts += 1
  if attempts < 3
    puts e.message + "...retrying request"
    retry                    # go to line `list = API.request("/list")`
  else
    puts "failed"
    raise
  end
end
```
## Rescue Modifier
```ruby
do_something rescue false 
```
## throw/catch
- catch method first params is the match object, second is the block
- throw method first params is the match object, second is the return resule
- non-linearly flow control 
```ruby
result = catch :abort do
  probes.each do |probe|
    while sample = probe.get_sample
      result = sample.process
      throw :abort, result.message if result.code != :ok  
    end
  end
  "All samples processed"
end
```
## scope and flow control
- whiles, `{}`block introduce scope 
- if/else, begin/end block, loops don'd introduce scope