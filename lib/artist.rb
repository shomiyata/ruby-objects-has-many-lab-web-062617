require 'pry'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    add_song(new_song)
  end
end
