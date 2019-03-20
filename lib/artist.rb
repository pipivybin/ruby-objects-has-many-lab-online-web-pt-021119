class Artist

attr_accessor :name, :songs
@@total_songs = []


def initialize(name)
  @name = name
  @songs = []
end

def songs
  @@total_songs << @songs
end

def add_song(song)
  song.artist = self
  @@total_songs << song
end

def add_song_by_name(songname)
  song = Song.new
  song.name = songname
  song.artist = self
  @@total_songs << song
end

def self.song_count
  @@total_songs.length
end



end
