require_relative '../config/environment.rb'

ali = Artist.new("Ali", 10)
harry = Artist.new("Harry", 8)
callum = Artist.new("Callum", 14)

tate = Gallery.new("Tate", "London")
maritime_museum = Gallery.new("Maritime Museum", "London")
louvre = Gallery.new("Louvre", "Paris")

mona_lisa = Painting.new("Mona Lisa", 500000, louvre, ali)
pillars_creation = Painting.new("Pillars of creation", 800000, maritime_museum, ali)
the_feast = Painting.new("The Feast", 350000, maritime_museum, ali)
girl_pearl_earing = Painting.new("Girl with the pearl earing", 300000, tate, harry)
american_gothic = Painting.new("American Gothic", 450000, louvre, harry)
starry_night = Painting.new("Starry night", 400000, maritime_museum, callum)
liberty = Painting.new("Liberty", 600000, tate, callum)



binding.pry

puts "Bob Ross rules."
