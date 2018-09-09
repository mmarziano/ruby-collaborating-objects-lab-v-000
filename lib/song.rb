class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def artist=(name)
    
  end
  
  def new_by_filename
    x = MP3Importer.new
    Song.new(x)
  end
end 