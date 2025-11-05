class Type
  def ==(other)
    puts "Comparing self == #{other}"
    other == "value"
  end
end

t = Type.new
p(t == "value")
p(t != "value")
