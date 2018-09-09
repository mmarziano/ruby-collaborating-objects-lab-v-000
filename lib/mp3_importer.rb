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
    binding.pry
    @files.each do |file|
      w = file.split(/\s*-\s*/)[0]
      Song.new(w)
    end
  end 
end 