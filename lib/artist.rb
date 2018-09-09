

class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []

  end 
  
  def songs 
    @songs 
  end 
  
  def add_song(name)
    @songs << name
  end
  
  def self.all
    @@all
  end 
  
  def save 
    @@all << self
  end 
  
  
  
  def self.find_or_create_by_name(artist)
    @@all.detect do |c|
      if c == artist 
        return artist.name 
      else 
        self.new(artist)
      end 
    end
  end
    
  def print_songs 
    @songs.each do |song|
      puts song.name
    end 
  end 
end 