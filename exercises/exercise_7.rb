require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Testing hour validation
# p @store2.employees.create(first_name: "Yolo", last_name: "Swag", hourly_rate: 41).valid?

# p @store2.employees.create(first_name: "Jack", last_name: "Black", hourly_rate: 50).valid?

# Should be invalid
# p Employee.create(first_name: "Jack", last_name: "Black", hourly_rate: 50).valid?

# valid
# p @store2.employees.create(first_name: "Jack", last_name: "Black", hourly_rate: 50).valid?

# invalid store
# puts Store.create(name: "Y", annual_revenue: 190000, mens_apparel: true).valid?

# valid store
# puts Store.create(name: "YVR", annual_revenue: 190000, mens_apparel: true).valid?

# invalid store
# puts Store.create(name: "Y", annual_revenue: 0, mens_apparel: true).valid?

# # valid store
# puts Store.create(name: "YVR", annual_revenue: 190000, mens_apparel: true).valid?

# invalid store
# puts Store.create(name: "Whitehorse", annual_revenue: 1, mens_apparel: false, womens_apparel: false).valid?

# valid store
# puts Store.create(name: "Whitehorse", annual_revenue: 1, mens_apparel: true, womens_apparel: false).valid?

puts "give me a store name"
inputName = gets.chomp

new_store = Store.create(name: inputName)

if new_store.valid?
  new_store.save
  puts "Store created successfully!"
else
  # Display the error messages
  puts "errors #{new_store.errors.full_messages.count}"
  puts "Failed to create store due to the following errors:"
  new_store.errors.full_messages.each do |error_message|
    puts "- #{error_message}"
  end
end