class User
    @user_count = 0
    def self.user_count
        @user_count
    end
end

class VVIPUser < User
    @user_count = 20
end

class VIPUser < User
    @user_count = 10    
end

puts User.user_count        #0
puts VIPUser.user_count     #10
puts VVIPUser.user_count    #20
