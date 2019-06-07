def with_timing
  start = Time.now
  if block_given?
    yield
    puts "Time taken: #{Time.now - start} seconds"
  end
end

def run_operation_1
  sleep(1)
end
def run_operation_2; end

with_timing do
  run_operation_1
  run_operation_2
end


