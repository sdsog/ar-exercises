# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)

puts @total_revenue.to_s

puts ''
puts '------- ANNUAL REVENUE -------'
puts @total_revenue
puts ''
