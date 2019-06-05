puts 'hello!'

my_count = 10
#GLOBAL VARIABLES
$log_level = "debug"

#method is able to return any type
#method returns at the last expression
def double(val)
    my_count = 5
    val * 2
    $log_level = "DEBUG1"
    puts my_count
    puts $log_level
end
double(1)
puts my_count
puts $log_level
