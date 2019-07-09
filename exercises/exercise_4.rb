# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts 'Exercise 4'
puts '----------'

# Your code goes here ...

burnaby = Store.create do |c|
  c.name = 'Burnaby'
  c.annual_revenue = 300_000
  c.mens_apparel = true
  c.womens_apparel = true
end

richmond = Store.create do |c|
  c.name = 'Richmond'
  c.annual_revenue = 1_260_000
  c.mens_apparel = false
  c.womens_apparel = true
end

gastown = Store.create do |c|
  c.name = 'Gastown'
  c.annual_revenue = 190_000
  c.mens_apparel = true
  c.womens_apparel = false
end

surrey = Store.create do |c|
  c.name = 'Surrey'
  c.annual_revenue = 224_000
  c.mens_apparel = false
  c.womens_apparel = true
end

whistler = Store.create do |c|
  c.name = 'Whistler'
  c.annual_revenue = 1_900_000
  c.mens_apparel = true
  c.womens_apparel = false
end

yaletown = Store.create do |c|
  c.name = 'Yaletown'
  c.annual_revenue = 430_000
  c.mens_apparel = true
  c.womens_apparel = true
end

puts ''
puts "MEN'S STORES"
puts ''
@mens_stores = Store.where(mens_apparel: true).each do |store|
  puts "STORE NAME: #{store.name} | ANNUAL REVENUE: #{store.annual_revenue}"
end

puts ''
puts '--------------'
puts ''

puts "WOMEN'S STORES"
puts ''
@womens_stores = Store.where('womens_apparel = true', 'annual_revenue < 1000000').each do |store|
  puts "STORE NAME: #{store.name} | ANNUAL REVENUE: #{store.annual_revenue}"
end
