class API
  @attempts = 0

  def self.request(str)
    raise "Network error"
  end
end

def batten_hatches
  puts "Making request"
  hatch_list = API.request("/hatches")
  # ...
rescue RuntimeError => e
  attempts ||= 0
  attempts += 1
  if attempts < 3
    puts e.message + ". Retrying request"
    retry
  else
    puts "Request failed"
    raise
  end
end

def batten_hatches
  1.upto(3) do |attempt|
    begin
      puts "Making request"
      hatch_list = API.request("/hatches")
      break
    rescue RuntimeError => e
      puts e.message
      if attempt == 3
        puts "Request failed."
        raise
      end
    end
  end
end

batten_hatches