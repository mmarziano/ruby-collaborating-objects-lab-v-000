class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def artist=(name)
    
  end
  
  def self.new_by_filename(x)
    y = MP3Importer.new(x)
    z = y.import
    Song.new(y)
  end
end 