require_relative "artist"
require_relative "painting"
class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings 
    Painting.all.select{|painting|painting.gallery == self}
  end

  def painting_names
    firstmethod = Painting.all.select{|painting|painting.gallery == self}
    secondmethod = firstmethod.collect{|painting|painting.title}
    return secondmethod
    # paintings.collect{|painting|painting.title} shorter way
  end

  def artists
    paintings.collect{|artist_name|artist_name.artist}
  end

  def artist_year
    artists.collect{|artist|artist.years_experience}
  end

  def combined_exp
    artist_year.inject(10){|sum, art_year| sum + art_year}
  end

  def artist_names
    artists.collect{|artist|artist.name}
  end


  def most_expensive_painting
    paintings.collect.max_by{|painting|painting.price}
  end

end
