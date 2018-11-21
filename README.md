# Restaurant Tycoon Object Relationship Practice.

Congrats!  You've been hired to build out an app for the booming restaurant business!  The base version of the app will allow users to search out restaurants and their locations around the city.  When you get done, you can move on to the super bonus version *but not until the base version is done*.

If you are not sketching out your domain, and thinking about single source of truth,
you should be!

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

## Deliverables

#### Build the following methods on the `Restaurant` class

+ `Restaurant.all`
  + Returns all `Restaurant` instances 
+ `Restaurant#locations`
  + Returns an array of all `Locations`s of this particular `Restaurant` instance 
+ `Restaurant#total_rent`
  + Returns the total amount this `Restaurant` pays for all of its `Location`s 
+ `Resturant#create_location`
  + Creats a new `Location` instance for this particular `Restuarant`


#### Build out the following methods on the `Location` class

+ `Location.all`
  + Returns an array of all `Location` instances, irrespective of the `Restaurant` each `Location` belongs to
+ `Location.all_address`
  + Returns an array of the address of all `Location` instances.


## SUPER BONUS MODE ##

Add a third class into the mix: an Employee.  Each location can have many employees, while each employee belongs to a location.

### Build out the following methods on the `Employee` class

+ `Employee.all`
  + Returns an array of each `Employee` instance, irrespective of which `Restaurant` they work for
+ `Employee.average_pay`
  + Returns the average pay of all employees, irrespective of which `Restaurant` they work for

### Build out the following methods on the `Restaurant` class 

+ `Restaurant#employees`
  + Returns an array of each `Employee` instance that works for this `Restaurant`
+ `Restaurant#total_pay`
  + Returns the total amount this `Restaurant` pays out to all of its employees
+ `Restaurant#total_expenes
  + Returns the total amount this `Restaurant` pays out to all of its employees AND in rent 

### Build out the following methods on the `Location` class 

+ `Location#hire_employee`
  + Creates a new `Employee` instance for this `Location`