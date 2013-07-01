#!/usr/bin/env ruby

# Ruby Diet Calculator for 3 phases of Engineering the Alpha
require_relative 'percentage'



#first option is what phase of the program you are in
puts "What phase of Engineering the Alpha are you in: (Please enter 1 2 3 4)"
phase = gets.to_i

puts "What is your current body weight? (Please only the weight in pounds)"
weight = gets.to_i

puts "What is your body fat percentage?(Please only include the number)"
pcnt = gets.to_i

percentage1 = Percentage.new(phase, weight, pcnt)

puts percentage1.lbm_rate
puts percentage1.lbm_number




