class Song 
  attr_accessor :name, :artist, :title
  

  
  def initialize(name)
    @name = name 
  end 
  
 
  
  def artist=(name)
    
  end
  
  def self.new_by_filename(file)
    parsed_file = file.split(" - ")
    artist = Artist.new(parsed_file[1])
    song = Song.new(parsed_file[0])
    
    
    song
  end
end 