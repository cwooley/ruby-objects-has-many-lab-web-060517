class Artist
  attr_accessor :name
  attr_reader :songs

  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def self.song_count
    self.all.each do |song|
      @@song_count += song.songs.size
    end
    @@song_count
  end



end
