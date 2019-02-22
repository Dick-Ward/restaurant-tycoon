
# Restaurant.all
# Returns all Restaurant instances
# Restaurant#locations
# Returns an array of all Locationss of this particular Restaurant instance
# Restaurant#total_rent
# Returns the total amount this Restaurant pays for all of its Locations
# Resturant#create_location
# Creats a new Location instance for this particular Restuarant

class Restaurant
    attr_accessor :name, :locations
    @@all = []

    def initialize(name)
        @name = name
        @locations = []
        Restaurant.all << self
    end

    def self.all
        @@all
    end

    # def locations
    #     #something like find array of this restraunts locations and return it
    #     @locations
    # end

    def total_rent
        #go through each location and add the rent property together
        restaurant_rent = 0
        self.locations.inject {|total_rent, ind_rent| restaurant_rent + location.rent}
    end

    def create_location
        new_location = Location.new
        new_location.restaurant = self
        self.locations << new_location
    end

end
