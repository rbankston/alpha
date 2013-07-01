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
    wo_protein = 0.8 * percentage1.lbm_number.to_f
    nwo_protein = 0.7 * percentage1.lbm_number.to_f
    nwo_base = nwo_calories.to_i - (nwo_protein.to_i * 4)
    wo_base = wo_calories.to_i - (wo_protein.to_i * 4) 
    begin_carb = 30
    wk3_carb = 75
    wk4_carb_wo = 100
    wk4_carb_nwo = 50
    wo_calories = percentage1.maint_calories.to_i - 300
    nwo_calories = percentage1.maint_calories.to_i - 500
    wo_fat3 = (wo_base.to_i - (wk3_carb.to_i * 4))/9
    wo_fat4 = (wo_base.to_i - (wk4_carb_wo.to_i * 4))/9
    nwo_fat4 = (wo_base.to_i - (wk4_carb_nwo.to_i * 4))/9
    nwo_fat14 = (nwo_base.to_i)/9
  elsif phase == 2 
    wo_calories = percentage1.maint_calories.to_i - 200
    nwo_calories = percentage1.maint_calories.to_i - 600
    wo_protein = percentage1.lbm_number.to_f
    nwo_protein = 0.8 * percentage1.lbm_number.to_f
    wo_carbs = 0.75 * percentage1.lbm_number.to_f
    nwo_carbs = 0.3 * percentage1.lbm_number.to_f
    wo_fat = (wo_calories.to_f - (wo_protein.to_f * 4) - (wo_carbs.to_f * 4))/9
    nwo_fat = (nwo_calories.to_f - (nwo_protein.to_f * 4) - (nwo_carbs.to_f * 4))/9
    puts "\nCalories on Workout days are #{wo_calories}. Protein on workout days are #{wo_protein} grams. 
    Carbs on workout days are #{wo_carbs} grams. Fat on workout days are #{wo_fat} grams. 
    
    Calories on non workout days are #{nwo_calories}. Protein on non workout days are #{nwo_protein} grams. 
    Carbs on non workout days are #{nwo_carbs} grams. Fat on non workout days are #{nwo_fat}."
  elsif phase == 3
    wo_calories = percentage1.maint_calories.to_i + 400
    nwo_calories = percentage1.maint_calories.to_i - 200
    wo_protein = 1.5 * percentage1.lbm_number.to_f
    nwo_protein = 1.25 * percentage1.lbm_number.to_f
    wo_carbs = 1 * percentage1.lbm_number.to_f
    nwo_carbs = 0.5 * percentage1.lbm_number.to_f
    wo_fat = (wo_calories - (wo_protein.to_f * 4) - (wo_carbs.to_f * 4))/9
    nwo_fat = (nwo_calories - (nwo_protein.to_f * 4) - (nwo_carbs.to_f * 4))/9
    puts "\nCalories on Workout days are #{wo_calories}. Protein on workout days are #{wo_protein} grams. 
    Carbs on workout days are #{wo_carbs} grams. Fat on workout days are #{wo_fat} grams. 
    
    Calories on non workout days are #{nwo_calories}. Protein on non workout days are #{nwo_protein} grams. 
    Carbs on non workout days are #{nwo_carbs} grams. Fat on non workout days are #{nwo_fat}."
  elsif phase == 4
    wo_calories = percentage1.maint_calories.to_i + 300
    nwo_calories = percentage1.maint_calories.to_i - 400
    wo_protein = 1.5 * percentage1.lbm_number.to_f
    nwo_protein = 1 * percentage1.lbm_number.to_f
    wo_carbs = 1 * percentage1.lbm_number.to_f
    nwo_carbs = 0.25 * percentage1.lbm_number.to_f
    wo_fat = (wo_calories - (wo_protein.to_f * 4) - (wo_carbs.to_f * 4))/9
    nwo_fat = (nwo_calories - (nwo_protein.to_f * 4) - (nwo_carbs.to_f * 4))/9
    puts "\nCalories on Workout days are #{wo_calories}. Protein on workout days are #{wo_protein} grams. 
    Carbs on workout days are #{wo_carbs} grams. Fat on workout days are #{wo_fat} grams. 
    
    Calories on non workout days are #{nwo_calories}. Protein on non workout days are #{nwo_protein} grams. 
    Carbs on non workout days are #{nwo_carbs} grams. Fat on non workout days are #{nwo_fat}."
  end
    




