require "cgi"
puts CGI.escapeHTML("a < 100 && b > 100")
