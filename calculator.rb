#!/usr/bin/env ruby

# Ruby Diet Calculator for 3 phases of Engineering the Alpha
require_relative 'lib/percentage'


#first option is what phase of the program you are in
puts "Pleaes enter 1 if your goal is resetting hormones.\n2 if you're cutting weight.\n3 to add mass or 4 to maintain."
print "What would you like to do?: (Please enter 1 2 3 4): "
phase = gets.to_i

print "What is your current body weight? (Please only the weight in pounds): "
weight = gets.to_i

print  "What is your body fat percentage?(Please only include the number): "
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
    




