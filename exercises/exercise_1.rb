# frozen_string_literal: true

require_relative '../setup'

puts 'Exercise 1'
puts '----------'

# Your code goes below here ...

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

puts Store.count
