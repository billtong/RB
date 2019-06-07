Result = Struct.new :code, :message

class Sample
  def process
    def process
      Result.new(:fail, "Contamination detected")
      #Result.new(:ok, "Another sample processed")
    end
    Result.new(:ok, "Sample processed")
  end
  def store

  end
end

class Probe
  def get_sample
    Sample.new
  end
end

probes = [Probe.new]

def handle(sample)
  result = sample.process
  throw(:abort, result.message) if result.code != :ok
  puts result.message
  sample.store
end

result = catch(:abort) do
  probes.each do |probe|
    while sample = probe.get_sample
      handle(sample)
    end
  end
  "All samples processed"
end

puts result