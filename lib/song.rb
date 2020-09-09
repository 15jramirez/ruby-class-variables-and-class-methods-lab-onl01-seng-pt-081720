  require 'pry'
class Song 
  attr_reader :name, :artist, :genre
  @@count= 0
  @@artists =[]
  @@genres=[]
  def initialize (name, artist, genre)
         @name = name
         @artist= artist
         @genre = genre
         @@count += 1 
         @@artists << artist
         @@genres << genre
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
    hash={}
    @@genres.each do |k|
      if hash[k]
        hash[k] += 1
      else
        hash[k]= 1
      end
   
    end
         hash
  end
  def self.artist_count
    artist_hash={}
    @@artists.each do |k|
      if artist_hash[k] += 1 
      else 
        artist_hash[k] = 1 
      end
  end
  artist_hash
  end
end