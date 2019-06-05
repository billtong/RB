class People
    attr_accessor :lan
    def initialize(lan)
        @lan = lan
    end
    def speak()
        puts "I can speak #{@lan} !"
    end
end

class Developer < People
    attr_accessor :code
    def initialize(lan, code)
        super(lan)
        @code = code
    end
    def speak()
        super
        puts "I code in #{@code}"
    end
end

bill = People.new("Chinese and English")
bill.speak
bill = Developer.new("Chinese and English", "Java, JavaScript, Go, Ruby and Kotlin")
bill.speak