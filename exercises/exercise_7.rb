# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...

puts 'ENTER STORE NAME: '
new_store = $stdin.gets.chomp

new_store = Store.new(name: 'new_store', annual_revenue: 100_000, mens_apparel: false, womens_apparel: false)
new_store.valid?
puts new_store.errors.messages
