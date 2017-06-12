class Artist

attr_reader :name

@@song_count = 0

def initialize(name)
  @name = name
  @songs = []
end

def songs
  @songs
end

def add_song(song_name)
  @@song_count +=1
  @songs << song_name
  song_name.artist = self
end

def add_song_by_name(song_name)
  song = Song.new(song_name)
  song.artist = self
  self.songs << song
  @@song_count +=1
end

def self.song_count
  @@song_count
end

end
