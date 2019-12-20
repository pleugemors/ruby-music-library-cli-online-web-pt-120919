class Artist 
  @@all = []
  attr_accessor :name 
  attr_reader :songs 

  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def save
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end
  
  def add_song(song_ins)
    if song_ins.artist.nil?
      song_ins.artist= self 
    end
    if !@songs.include?(song_ins)
      @songs << song_ins
    end
  end
  
end