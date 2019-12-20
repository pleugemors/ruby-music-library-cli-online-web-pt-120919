class Song 
  
  @@all = []
  attr_accessor :name
  attr_reader :artist 
  
  def initialize(name, artist = nil )
    @name = name
    @artist = artist 
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear 
  end
  
  def save 
    @@all << self 
  end
  
  def self.create(name)
    new_song = Song.new(name)
    new_song.save
    new_song 
  end
  
  def artist=(artist)
    if !artist.songs.include?(self)
      artist.add_song(self)
    end
  end
  
end