#!/usr/bin/env ruby

# Ruby Diet Calculator for 3 phases of Engineering the Alpha
require_relative 'percentage'
require_relative 'diet'


#first option is what phase of the program you are in
puts "What phase of Engineering the Alpha are you in: (Please enter 1 2 3 4)"
phase = gets.to_i

puts "What is your current body weight? (Please only the weight in pounds)"
weight = gets.to_i

puts "What is your body fat percentage?(Please only include the number)"
pcnt = gets.to_i

percentage1 = Percentage.new(phase, weight, pcnt)


puts "\n#{percentage1.lbm_number} is the amount of lean body mass"
puts "#{percentage1.maint_calories} is the maint. calories at the moment"
puts "\nCalories on Workout days are #{@wo_calories}. Protein on workout days are #{@wo_protein} grams. 
        Carbs on workout days are #{@wo_carbs} grams. Fat on workout days are #{@wo_fat} grams. 
        
        Calories on non workout days are #{@nwo_calories}. Protein on non workout days are #{@nwo_protein} grams. 
        Carbs on non workout days are #{@nwo_carbs} grams. Fat on non workout days are #{@nwo_fat}."





