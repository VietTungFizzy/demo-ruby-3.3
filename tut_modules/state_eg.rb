module Test
  def self.states
    @states ||= {}
  end

  def state=(value)
    Test.states[object_id] = value
  end

  def state
    Test.states[object_id]
  end
end

class Client
  include Test
end

c1 = Client.new
c2 = Client.new
c1.state = "cat"
c2.state = "dog"
puts c1.state
puts c2.state
