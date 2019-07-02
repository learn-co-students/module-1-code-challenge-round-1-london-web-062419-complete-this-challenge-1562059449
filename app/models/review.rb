class Review

attr_accessor :content 
attr_accessor :customer, :restaurant, :rating

@@all = []

def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        if rating.between?(1, 5)
            @rating = rating
        elsif rating > 5
            @rating = 5
        elsif rating < 1
            @rating = 1
        end
        @@all << self

        #testing the above I don't know if the else statement will work. 
  
end


def self.all
    @@all
end


end
