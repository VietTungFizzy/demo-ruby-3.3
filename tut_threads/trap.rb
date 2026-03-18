trap("CLD") do
  pid = Process.wait
  puts "Child pid #{pid}: terminated"
end
spawn("sort testfile > output.txt")
fork && Process.wait

10_000.times.map do |i|
  if(i % 1_000 == 0)
    puts "Checkpoint #{i}" 
  end
end
