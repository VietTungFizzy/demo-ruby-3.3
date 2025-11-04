puts /(?<hour>\d\d):(?<min>\d\d)(..)/ =~ "12:50am"
puts "Hour is #{hour}, minute #{min}"

# You can mix named and position-based references
puts "Hour is #{hour}, minute #{$2}"
