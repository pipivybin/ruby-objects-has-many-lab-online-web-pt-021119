class Artist

attr_accessor :name, :songs
@@total_songs = []


def initialize(name)
  @name = name
end

def songs
  @@total_songs << @songs 
end

def add_song(song)
  song.artist = self
end

def add_song_by_name(songname)
  song = Song.new
  song.name = songname
  song.artist = self
end

def self.song_count

end



end
