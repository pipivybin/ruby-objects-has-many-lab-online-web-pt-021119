class Artist

attr_accessor :name, :songs

def initialize(name)
  @name = name
end

def songs

end

def add_song(song)
  song = Song.new
  song.name = songname
  song.artist = self
end

def add_song_by_name(songname)
  song = Song.new
  song.name = songname
  song.artist = self
end



end
