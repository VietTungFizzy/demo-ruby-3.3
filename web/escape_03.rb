require "cgi"
puts CGI.unescapeHTML("a &lt; 100 &amp;&amp; b &gt; 200")
