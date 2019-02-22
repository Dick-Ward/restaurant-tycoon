# Build out the following methods on the Location class
# Location.all
# Returns an array of all Location instances, irrespective of the Restaurant each Location belongs to
# Location.all_addresses
# Returns an array of the address of all Location instances.


class Location
    attr_accessor :restaurant, :address, :rent
    @@all = []

    def initialize(address="default", rent="default", restaurant="default")
        @address = address
        @rent = rent
        @restaurant = restaurant
        Location.all << self
    end

    def self.all
        @@all
    end

    def self.all_addresses
        #something like create array from all location objects of their addresses and return it
        Location.all.map do |location|
            location.address
        end
    end
end
