=begin
Variables Concepts
大写开头 - 常数
$开头 - 全局变量，可以跨类使用
@@开头 - 类变量， 类变量可以跨不同的对象使用。
@开头 - 实例便令，实例变量可以跨任何特定的实例或对象中的方法使用。
小写或_开头 - 局部变量是在方法中定义的变量。局部变量在方法外是不可用的。 
spectail variables
self: 当前方法的接收器对象。
true/false: boolean值
nil: undefined值
__FILE__: 当前源文件名称
__LINE__: 当前源文件编号
=end

class Customer
  @@num_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def display_details
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "CUstomer address #@cust_addr"
  end
  def total_num_of_customers
    @@num_of_customers += 1
    puts "Total number of customers: #@@num_of_customers"
  end
  def class_info
    puts __FILE__
    puts __LINE__
    puts self
  end
end

cust1 = Customer.new("1", "Bill", "269 Earl St.")
cust1.display_details()
cust1.total_num_of_customers()
cust2 = Customer.new("2", "Tom", "x")
cust2.display_details()
cust2.total_num_of_customers()
cust1.class_info()

cust3 = cust1
puts cust1.equal?cust3