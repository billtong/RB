Message = Struct.new(:text, :type)
class Message
  def process
    puts "Processing message"
  end
end

class Comms
  def get_message
    Message.new
  end
end

comms = Comms.new

while message = comms.get_message
  next if message.type == "sync"
  message.process
end
