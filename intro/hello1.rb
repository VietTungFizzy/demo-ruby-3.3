def say_hello_goodbye(name)
  # result = "I don't know why you say goodbye, " + name + ", I say hello"
  # return result
  "I don't know why you say goodbye, #{name}, I say hello" 
end

# call the method
puts say_hello_goodbye("John")
puts say_hello_goodbye("Paul")
