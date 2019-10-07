require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  attr_reader :count, :genres, :artists, :genre_count, :artists_count  

  @@count = 0 
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def name
    @name
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end

   def self.count
     @count = @@count
   end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end

  
  def self.genre_count
    genre_count = {}
    @@genres.each do |key|
      genre_count[key] += 1
    end
      
#       genre_count.each do |keys,values|
      

#   puts "#{k} appears #{v} times"
# end
#       binding.pry
#     end
    
    #genre_count = {genre[i] => #of songs}
  end
  
  def self.artists_count
  end
  
end

#binding.pry