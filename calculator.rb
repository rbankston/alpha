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

  if phase == 1
    percentage1.report1
  elsif phase == 2 
    percentage1.report2
  elsif phase == 3
   percentage1.report3
  elsif phase == 4
    percentage1.report4
  end
    




