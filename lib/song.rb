class Song 
  attr_accessor :name, :artist, :title
  

  
  def initialize(name)
    @name = name 
  end 
  
 def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  
  def self.new_by_filename(file)
    parsed_file = file.split(" - ")
    artist = Artist.find_or_create_by_name(parsed_file[1])
    song = self.new(parsed_file[0])
    song.artist = artist
    artist.add_song(song)
    song
  end
end 