class MP3Importer 
  attr_accessor :files, :path 
  
  @@all = []
  
  def initialize(path)
    @path = path
    self.files
  end 
  
  def files 
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
    @files

  end
  
  def import 
    @files.each do |file|
      file.split(/\s*-\s*/)
  end 
end 