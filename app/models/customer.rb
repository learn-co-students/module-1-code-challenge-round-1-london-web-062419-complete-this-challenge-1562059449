class Customer
  attr_reader :first_name, :last_name

#setting the all array
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #.all returns all of the customer instances

  def self.all
    @@all
  end

  #customer add reviews to contain restaurant, content, rating.

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end


  # reviews per customer
  def reviews
    Review.all.select { |review| review.customer == self }
  end

  #restaurant per each customer 

  def restaurants
    self.reviews.map { |review| review.restaurant }.uniq
  end



  #Num reviews

  def num_reviews
    Review.all.select {|review| review.customer == self}.count 
  end


  #all names 

  def self.all_names
    @@all.map { |customer| customer.full_name }
  end

  #find by name 
#was starting to test but time ran out
  def self.find_by_name(name)
    @@all.find { |customer| customer.full_name == name}
  end

  






end
