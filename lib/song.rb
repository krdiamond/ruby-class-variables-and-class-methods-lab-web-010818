
require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@all << self
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count_hash = Hash.new(0)
    @@genres.each do |g|
      genre_count_hash[g] += 1
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = Hash.new(0)
    @@artists.each do |a|
      artist_count_hash[a] += 1
    end
      artist_count_hash
  end


end


#lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
#ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
#hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
