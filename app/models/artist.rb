require_relative 'gallery'
require_relative 'painting'

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
    my_paintings = Painting.all.select {|a| a == self}
  end

  # def galleries
  #   my_galleries = Gallery.all.select {|a| a == self}
  # end

  def cities
  end

  def self.total_experience
  end

  def self.most_prolific
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price, self, gallery)
  end

end
