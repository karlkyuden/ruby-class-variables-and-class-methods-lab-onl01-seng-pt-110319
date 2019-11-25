class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    puts "#{name} and #{artist} and #{genre}."
  end
  
end