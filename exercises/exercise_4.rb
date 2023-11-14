require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

Store.create(name: "Whistler", annual_revenue: 1900000,  mens_apparel: true, womens_apparel: false)

Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# only men's apparel
@mens_store = Store.where(mens_apparel: true)

# loop and print name and revenue
@mens_store.each do |store|
  print "#{store.name} #{store.annual_revenue} \n"
end

# only women's apparel
@womens_store = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@womens_store.each do |store|
  print "#{store.name} #{store.annual_revenue} \n"
end