def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end 
end

# match duplicated letter
str = 'He said "Hello"'

puts show_regexp(str, /(?<char>\w)\k<char>/)

str = "Mississippi"
puts show_regexp(str, /(?<seg>\w+)\k<seg>/)
