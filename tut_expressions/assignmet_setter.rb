class Test
  def val=(val)
    @val = val
    return 99
  end
end

t = Test.new
result = (t.val = 2)
puts result
