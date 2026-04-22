require "cgi"
puts CGI.escapeElement("<hr><a href='/mp3'>Click here</a><br>", "A")
