# frozen_string_literal: true

require 'colorize'
require 'colorized_string'

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

puts ''
puts ''

puts ColorizedString['*** ADD NEW STORE ***'].colorize(:light_cyan).bold.blink

puts ''
puts ''

print ColorizedString['ENTER STORE NAME: '].colorize(:green)
new_store = $stdin.gets.chomp
puts ''
print ColorizedString['ENTER ANNUAL REVENUE: '].colorize(:green)
annual_revenue = $stdin.gets.chomp
puts ''
print ColorizedString['SELLS MENS APPAREL? [yes/no]: '].colorize(:green)
mens_apparel_check = $stdin.gets.chomp

case mens_apparel_check
when 'y', 'Y', 'yes'
  mens_apparel_check = true
when 'n', 'N', 'no'
  mens_apparel_check = false
end
puts ''
print ColorizedString['SELLS WOMENS APPAREL? [yes/no]: '].colorize(:green)
womens_apparel_check = $stdin.gets.chomp

case womens_apparel_check
when 'y', 'Y', 'yes'
  womens_apparel_check = true
when 'n', 'N', 'no'
  womens_apparel_check = false
end

new_store = Store.create! do |c|
  c.name = new_store.to_str
  c.annual_revenue = annual_revenue
  c.mens_apparel = mens_apparel_check
  c.womens_apparel = womens_apparel_check
end

# new_store = Store.new(name: 'new_store', annual_revenue: 100_000, mens_apparel: false, womens_apparel: false)
# new_store.valid?
# puts new_store.errors.messages

# new_store = Store.create! do |c|
#   c.name = 'Burnaby'
#   c.annual_revenue = 300_000
#   c.mens_apparel = true
#   c.womens_apparel = true
# end
