class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    if @@artists.include?(artist) == false
      @@artists << artist
    end
  end
  
  def artists
    artists
  end
  
  def count
    @@count
  end
  
  
end