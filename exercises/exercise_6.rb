# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...

@store1.employees.create do |c|
  c.first_name = 'Khurram'
  c.last_name = 'Virani'
  c.hourly_rate = 60
end

@store1.employees.create do |c|
  c.first_name = 'Sarah'
  c.last_name = 'Bonkers'
  c.hourly_rate = 12
end

@store1.employees.create do |c|
  c.first_name = 'Jerry'
  c.last_name = 'Peters'
  c.hourly_rate = 45
end

@store1.employees.create do |c|
  c.first_name = 'Rob'
  c.last_name = 'Carson'
  c.hourly_rate = 80
end

@store2.employees.create do |c|
  c.first_name = 'Flippy'
  c.last_name = 'Joeman'
  c.hourly_rate = 60
end

@store2.employees.create do |c|
  c.first_name = 'Kerry'
  c.last_name = 'Rupers'
  c.hourly_rate = 72
end

@store2.employees.create do |c|
  c.first_name = 'Singar'
  c.last_name = 'Kepop'
  c.hourly_rate = 15
end

@store2.employees.create do |c|
  c.first_name = 'Zonk'
  c.last_name = 'Nerphy'
  c.hourly_rate = 100
end


# @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

# @store1.employees.create(first_name: "Lijing", last_name: "Wang", hourly_rate: 70)

# @store1.employees.create(first_name: "Cheng", last_name: "Shi", hourly_rate: 80)

# @store2.employees.create(first_name: "Hong", last_name: "Li", hourly_rate: 80)

