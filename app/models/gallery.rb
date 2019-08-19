require_relative 'artist'
require_relative 'painting'

class Gallery

  attr_accessor :painting, :name, :city, :artist

  @@all = []

  def initialize(name, city)
    @painting = painting
    @artist = artist
    @name = name
    @city = city
    @@all << self
  end
 
  def self.all
    @@all
  end

  def add_painting(name)
#find all the paintings and select the i want
#reassign the painting to my gallery
    find_painting_from_gallery = Painting.all.find {|p| p.title == name}
    assign_painting_to_gallery = find_painting_from_gallery.gallery = self
  end


  def paintings
    #find the paintings in the gallery by searching paintings where self is the gallery
    my_paintings = Painting.all.select {|p| p.gallery == self}
  end

  def artists
    #find the paintings in this gallery
    my_paintings = Painting.all.select {|p| p.gallery == self}
    #find the artists of those paintings
    my_artists = my_paintings.map {|p| p.artist}

  end

  def artist_names
  end

  def most_expensive_painting
  end
  


end
