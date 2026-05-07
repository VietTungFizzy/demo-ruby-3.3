require_relative "vanity_puts"

class DavesStuff
  using VanityPuts

  def greet(msg)
    puts msg
  end
end

DavesStuff.new.greet("in DavesStuff")
