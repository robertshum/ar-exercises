require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Rob", last_name: "Shum", hourly_rate: 70)


@store2.employees.create(first_name: "Joe", last_name: "Blow", hourly_rate: 80)
@store2.employees.create(first_name: "Yolo", last_name: "Swag", hourly_rate: 90)


puts Employee.count