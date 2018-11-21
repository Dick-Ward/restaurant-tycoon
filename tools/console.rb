require_relative 'environment.rb'


fridays = Restaurant.new("TGIFridays")
chilis = Restaurant.new("Chili's")


broad = Location.new("11 Broadway",1200, fridays)
westside = Location.new("22 Westside",4200, fridays)
fortytwo = Location.new("42nd Street",300, fridays)
gates = Location.new("214 Gates",400, chilis)

Employee.new("Greg", 123, broad)
Employee.new("Sahsa",1234, broad)
Employee.new("Devin", 234, gates)
Employee.new("Prince", 5342, westside)
Employee.new("Winter", 23, fortytwo)
Employee.new("Brooke",123, gates)
Employee.new("Laura", 534, broad)


Pry.start

puts "hi"
