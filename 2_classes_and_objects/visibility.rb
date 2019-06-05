class People
    attr_reader :test_protect
    protected :test_protect

    def initialize(name)
        @name = name
        @test_protect = "I am great"
    end

    def say_my_name
        puts "#@name"
    end
    private :say_my_name
end

class Developer < People
    def initialize
        super("devoloper")
        puts "#@test_protect"
        say_my_name
    end
end

bill = People.new("Bill Tong")
#bill.say_my_name
bill.send :say_my_name


sam = Developer.new
puts sam.test_protect   #protected method `test_protect' called for #<Developer:0x00007fb6bc04f7c0> (NoMethodError)