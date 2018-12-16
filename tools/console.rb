require_relative '../config/environment.rb'

r1 = Restaurant.new("r1")
r2 = Restaurant.new("r2")
r3 = Restaurant.new("r3")

l1 = Location.new("123", 500, r1) # address, rent, restaurant
l2 = Location.new("456", 400, r2) # address, rent, restaurant
l3 = Location.new("789", 200, r3) # address, rent, restaurant
l4 = Location.new("789", 700, r2) # address, rent, restaurant
l5 = Location.new("789", 900, r2) # address, rent, restaurant

e1 = Employee.new("e1", 5, l1) # name, pay, location
e2 = Employee.new("e2", 10, l2) # name, pay, location
e3 = Employee.new("e3", 5, l3) # name, pay, location
e4 = Employee.new("e4", 5, l1) # name, pay, location
e5 = Employee.new("e5", 5, l2) # name, pay, location
e6 = Employee.new("e6", 5, l4) # name, pay, location
e7 = Employee.new("e7", 5, l4) # name, pay, location
e8 = Employee.new("e8", 5, l3) # name, pay, location

e9 = l5.hire_employee("e9",10)
binding.pry
# Pry.start
