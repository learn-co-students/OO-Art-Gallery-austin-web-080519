require_relative 'gallery'

class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist, gallery = nil)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
   the_prices = @@all.map {|p| p.price}
   final_prices = the_prices.sum
  end

  def add_gallery(name, city)
    gallery_name = Gallery.new(self, name, city)
  end




end
