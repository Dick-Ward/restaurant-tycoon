require_relative 'environment.rb'


fridays = Restaurant.new("TGIFridays")
chilis = Restaurant.new("Chili's")


broad = Location.new("11 Broadway",1200, fridays)
westside = Location.new("22 Westside",4200, fridays)
fortytwo = Location.new("42nd Street",300, fridays)
gates = Location.new("214 Gates",400, chilis)

Pry.start
