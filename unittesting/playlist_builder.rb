class PlaylistBuilder
  Entry = Struct.new(:artist, :title)
  attr_reader :playlist, :db

  def initialize(db)
    @playlist = []
    @db = db
    db.connect
  end

  def close
    db.disconnect
  end 

  def include_artist(name)
    @playlist = []
    7.times { @playlist << Entry.new("krauss", "") }
  end

  def include_title(name)
    @playlist = []
    13.times { @playlist << Entry.new("", "midnight") }
  end
end

class DBI
  def initialize(url)
    @url = url
    @connected = false
  end

  def connect
    @connected = true
  end

  def disconnect
    @connected = false 
  end
end
