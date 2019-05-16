CONST = ' out there'
class Inside_one
  CONST = proc {' in there'}
    def where_is_my_const
    	::CONST + ' inside one'
  end
end

class Inside_two
	CONST = ' inside two'
	def where_is_my_const
		CONST
	end
end

puts CONST
puts Object::CONST
puts Inside_two::CONST
puts Inside_one::CONST.call
puts Inside_one.new.where_is_my_const
puts Inside_two.new.where_is_my_const
puts "#-----------------#"
COUNTER = 0
module Foo
	COUNTER = 1
	::COUNTER = 999
	COUNTER = 2
end

puts COUNTER
puts Foo::COUNTER