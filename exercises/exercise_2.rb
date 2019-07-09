require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# returns the object for ID = 1:
@store1 = Store.find(1)
# returns the object for ID = 2:
@store2= Store.find(2)

# Updates one record
@store1.update(name: 'Ottawa')