class Song

attr_accessor :artist
attr_reader :name


  def initialize(name)
    @name = name
  end

  def artist_name
  if self.artist == nil
    return nil
  else
    self.artist.name
  end
end

def self.all
  @@songs
end

end
