Message = Struct.new(:text, :type)
class Message
  def process
    self.type = "voice"
    self.text = "Aha"
  end
end

class Comms
  def get_message
    Message.new
  end
end

comms = Comms.new

text = while message = comms.get_message
         message.process
         break message.text if message.type == "voice"
       end

puts text
