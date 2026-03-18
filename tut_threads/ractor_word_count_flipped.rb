counter = Racter.new(name: "counter") do
  result = Hash.new(0)
  while (word = Ractor.receive)
    result[word] += 1
  end
  result
end

Ractor.new(count, name: "reader") do |worker|
  File.foreach("./testfile") do |line|
    line.scan(/\w+/) do |word|
      worker.send(word.downcase) 
    end
  end
  worker.send(nil)
end

counts = counter.take
counts.keys.sort.each { |k| print "#{k}:#{counts[k]} " }
