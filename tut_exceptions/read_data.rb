require_relative "retry_exception"

def read_data(attempt_count)
  data = @socket&.read(512)
  if data.nil?
    raise RetryException.new(attempt_count < 10), "transient read error"
  end 
end

read_data(5)
