word_list = File.open("wordlist")

catch(:done) do
  result = []
  while (line = word_list.gets)
    word = line.chomp
    throw :done unless /^\w+$/.match?(word)
    result << word
  end
  puts results.reverse
end
