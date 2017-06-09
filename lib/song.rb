class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end

end
