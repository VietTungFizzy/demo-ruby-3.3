require "open-uri"

url = "https://pragprog.com"
URI.open(url) do |f|
 puts f.read.scan(/<img class=".*?" src="(.*?)"/m).uniq[0, 3]
end 
