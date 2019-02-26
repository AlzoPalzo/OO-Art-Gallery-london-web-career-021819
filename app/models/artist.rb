class Artist

  attr_reader :name, :years_experience
  @@artists = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@artists << self
  end

  def self.all
    @@artists
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gallery| gallery.city}.uniq
  end

  def self.total_experience
    all.map{|artist| artist.years_experience}.inject(0, :+)
  end

  def self.most_prolofic
    prolofic_artist = nil           #holder for the artist who is most prolific
    paintings_year = 0.0

    all.each do |artist|
      n_paintings = artist.paintings.length.to_f           #number of paintings for a specific artist
      prolificness = n_paintings / artist.years_experience     #paintings per year for that artist
      if prolificness > paintings_year
        paintings_year = prolificness 
        prolofic_artist = artist    #if that arist is more prolific than the ones befor it is the new prolific artist
      end
    end
    prolofic_artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end
