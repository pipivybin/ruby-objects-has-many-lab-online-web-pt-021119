require 'pry'

class Artist

attr_accessor :name, :songs
@@total_songs = []


def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  song.artist = self
  @songs << song
  @@total_songs << song
end

def add_song_by_name(songname)
  song = Song.new(songname)
  song.artist = self
  @@total_songs << song
  @songs << song
end

def self.song_count
  @@total_songs.length
end



end
