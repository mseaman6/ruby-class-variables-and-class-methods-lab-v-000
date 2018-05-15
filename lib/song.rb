require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @@genre_count = {}
    @@genres.each do |genre|
      if @@genre_count[genre]
        "I already exist"
      else
        "I don't exist"
      end
    binding.pry
    end
  end

  def self.artist_count

  end

end
