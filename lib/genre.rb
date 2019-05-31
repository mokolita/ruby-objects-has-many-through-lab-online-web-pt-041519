class Genre 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all.uniq 
  end 
  
  def songs
      Song.all.select do |song|
        song.genre == self 
    end 
  end 
  
  def artists 
    songs.collect do |songs_in_genre|
      songs_in_genre.artist   
    end 
  
  end 
end 