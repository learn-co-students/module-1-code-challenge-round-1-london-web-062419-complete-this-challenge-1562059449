class Restaurant
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  
  #Restaurant reviews return an array of all reviews .self

  def reviews
    Review.all.select {|review| review.restaurant == self }
  end
  
  
  #Return a unique list of all customers that have reviewed that restaurant

  def customers
    self.reviews.map {|review| review.customer }.uniq
  end
  

  #Restaurant average start rating based on it's reviews

  def average_star_rating
    total = 0
    reviews = self.reviews.each { |review| total += review.rating }
    average = total.to_f / reviews.count
  end

  # the longest review content

  def longest_review
    long_review = ""
    self.reviews.each { |review| review.content.size > long_review.size ? long_review = review.content : long_review }
    long_review
  end

  #find restaurant by name 

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name }
  end

  


end
