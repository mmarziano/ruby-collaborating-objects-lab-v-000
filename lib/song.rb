class Song 
  attr_accessor :name, :artist
  

  
  def initialize(name)
    @name = name 
  end 
  
 
  
  def artist=(name)
    
  end
  
  def self.new_by_filename(file)
    parsed_file = file.split(" - ")
  end
end 