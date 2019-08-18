require_relative "gallery"
require_relative "painting"
class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    a = Painting.all.select{|painting|painting.artist == self}
    b = a.collect{|p|p.title}
    return b
    
  end

  def galleries
    Gallery.all.select{|gal|gal.name == self}
  end

  def cities
    galleries.collect{|c|c.city}
  end

  def self.total_experience
    Artist.all.inject(0){|sum, x|sum + x.years_experience}
  end

  def self.most_prolific
    Artist.all.max_by{|artist| artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end

end
