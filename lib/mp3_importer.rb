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
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
    @files.each do |file|
      x = file[0]
      Song.new(x)
    end
  end 
end 