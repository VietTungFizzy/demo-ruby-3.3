IRB.conf[:IRB_RC] = lambda do |conf|
  leader = " " * conf.irb_name.length
  conf.prompt_i = "#{conf.irb_name} --> "
  conf.prompt_s = leader + ' \-" '
  conf.prompt_c = leader + ' \-+ ' 
  conf.return_format = leader + " ==> %s\n\n" 
  puts "Welcome!"
end

IRB.conf[:PROMPT][:MY_PROMPT] = { # name of the prompt mode
  :PROMPT_I => '-->', # normal prompt
  :PROMPT_S => '--"', # prompt for continuing strings
  :PROMPT_C => '--+', # prompt for continuing statement
  :RETURN => "  ==>%s\n" # format to return value
}

def time(&block)
  require 'benchmark'
  result = nil
  timing = Benchmark.measure do
    result = block.()
  end
  puts "It took: #{timing}"
  result
end
