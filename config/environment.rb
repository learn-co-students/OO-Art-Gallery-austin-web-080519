require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

artist1 = Artist.new("Babe", 13)
artist2 = Artist.new("Babe2", 12)
artist3 = Artist.new("Babe3", 14)

first_gal = Gallery.new(artist1, "San Antonio")
sec_gal = Gallery.new(artist1, "Austin")
thr_gal = Gallery.new(artist1, "Dallas")


car_painting = Painting.new(artist1, "CarPainting", 20, first_gal)
cat_painting2 = Painting.new(artist2, "wowpainting", 30, first_gal)
no_painting = Painting.new(artist3, "hemesh", 3, sec_gal)
nice_painting = Painting.new(artist3, "ni", 5, sec_gal)
binding.pry
