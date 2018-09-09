

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
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end 
end 