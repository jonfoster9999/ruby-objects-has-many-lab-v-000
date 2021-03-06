class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
