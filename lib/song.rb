class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
  end 
  
  def add_song(song)
    @@all << song
  end
  
  def artist=(name)
    
  end
  
  def self.new_by_filename(x)

    Song.new(y)
  end
end 