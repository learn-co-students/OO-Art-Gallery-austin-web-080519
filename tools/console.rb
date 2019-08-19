require_relative '../config/environment.rb'
require pry

# <--- testing - creation of artists --->
syd_bailey = Artist.new("Syd Bailey", 7)
jeff_lai = Artist.new("Jeff Lai", 5)

# <--- run this code for list of all artists ---->
Artist.all
#<--- end testing --->

# <--- testing - creation of new galleries --->
moma = Gallery.new("MoMA", "New York City")
forest_hills_gallery = Gallery.new("Forest Hills Gallery", "Queens")
austin_gallery = Gallery.new("Austin Gallery", "Austin")
# <--- end testing - creation of new galleries --->

# <--- run this code for list of all galleries --->
Gallery.all
# <--- end testing --->

# <--- testing - creation of new paintings --->
spoonman = jeff_lai.create_painting("Spoonman", 30000, moma)
mona_lisa = syd_bailey.create_painting("Mona Lisa", 25000, forest_hills_gallery)
starry_night = jeff_lai.create_painting("Starry Night", 50000, forest_hills_gallery)
# <--- end testing - creation of new paintings --->

# <--- testing - total price of ALL paintings --->
## painting can't be coered into integer ##
Painting.total_price
# <--- end testing --->


binding.pry 

puts "Bob Ross rules."
