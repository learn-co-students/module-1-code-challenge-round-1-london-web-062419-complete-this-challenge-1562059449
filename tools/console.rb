require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("david", "bad")
c2 = Customer.new("mani", "best")

r1 = Restaurant.new("blecker")
r2 = Restaurant.new("fiveguys")

rw0 = Review.new(c1, r1, "decent", 4)
rw1 = c1.add_review("blecker", "alright", 3)
rw2 = c1.add_review("fiveguys", "good", 4)
rw3 = c2.add_review("fiveguys", "good", 4)
rw4 = c2.add_review("fiveguys", "ok", 2)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line