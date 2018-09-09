class MP3Importer 
  attr_accessor :files, :path 
  
  @@all = []
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
    @files

  end
  
  def import 
    @files.split(/\s*-\s*/)
  end 
end 