#Percentage measurement portion

class Percentage

  attr_accessor :phase
  attr_accessor :pcnt
  attr_accessor :weight

    
  def initialize(phase, weight, pcnt)
    @phase = phase
    @weight = weight
    @pcnt = pcnt
  end
  
  def lbm_rate
    if pcnt < 12
      lbm_rate = 17
    elsif pcnt < 15
      lbm_rate = 16
    elsif pcnt < 19
      lbm_rate = 15
    elsif pcnt < 22
      lbm_rate = 14
    else pcnt >= 23
      lbm_rate = 13
    end
  end  
  
  def lbm_number
    ffm = (100.00 - pcnt)/100.00
    lbm_number = ffm * weight
  end
  
  def maint_calories
    @maint_calories = lbm_rate.to_f * lbm_number.to_f
  end
  
  def printout
    puts "\nCalories on Workout days are #{@wo_calories}. Protein on workout days are #{@wo_protein} grams. 
    Carbs on workout days are #{@wo_carbs} grams. Fat on workout days are #{@wo_fat} grams. 
    
    Calories on non workout days are #{@nwo_calories}. Protein on non workout days are #{@nwo_protein} grams. 
    Carbs on non workout days are #{@nwo_carbs} grams. Fat on non workout days are #{@nwo_fat}."
  end
  
  def report1
    @wo_protein = 0.8 * lbm_number.to_f
    @wo_calories = maint_calories.to_i - 300
    @nwo_calories = maint_calories.to_i - 500
    @nwo_protein = 0.7 * lbm_number.to_f 
    @wo_carbs = 0
    @nwo_carbs = 0
    @wo_fat = (@wo_calories.to_f - (@wo_protein.to_f * 4) - (@wo_carbs.to_f * 4))/9
    @nwo_fat = (@nwo_calories.to_f - (@nwo_protein.to_f * 4) - (@nwo_carbs.to_f * 4))/9
    printout
    puts "\tDuring Week 3 you start 30 grams of carbs on workout days."
    puts "\tDuring Week 4 you get 100 grams of carbs on workout days and 70 on non-workout days"
  end
  
  def report2
    @wo_calories = maint_calories.to_i - 200
    @nwo_calories = maint_calories.to_i - 600
    @wo_protein = lbm_number.to_f
    @nwo_protein = 0.8 * lbm_number.to_f
    @wo_carbs = 0.75 * lbm_number.to_f
    @nwo_carbs = 0.3 * lbm_number.to_f
    @wo_fat = (@wo_calories.to_f - (@wo_protein.to_f * 4) - (@wo_carbs.to_f * 4))/9
    @nwo_fat = (@nwo_calories.to_f - (@nwo_protein.to_f * 4) - (@nwo_carbs.to_f * 4))/9
    printout
  end
  
  def report3
    @wo_calories = maint_calories.to_i + 400
    @nwo_calories = maint_calories.to_i - 200
    @wo_protein = 1.5 * lbm_number.to_f
    @nwo_protein = 1.25 * lbm_number.to_f
    @wo_carbs = 1 * lbm_number.to_f
    @nwo_carbs = 0.5 * lbm_number.to_f
    @wo_fat = (@wo_calories - (@wo_protein.to_f * 4) - (@wo_carbs.to_f * 4))/9
    @nwo_fat = (@nwo_calories - (@nwo_protein.to_f * 4) - (@nwo_carbs.to_f * 4))/9
    printout
  end
  
  def report4
    @wo_calories = maint_calories.to_i + 300
    @nwo_calories = maint_calories.to_i - 400
    @wo_protein = 1.5 * lbm_number.to_f
    @nwo_protein = 1 * lbm_number.to_f
    @wo_carbs = 1 * lbm_number.to_f
    @nwo_carbs = 0.25 * lbm_number.to_f
    @wo_fat = (@wo_calories - (@wo_protein.to_f * 4) - (@wo_carbs.to_f * 4))/9
    @nwo_fat = (@nwo_calories - (@nwo_protein.to_f * 4) - (@nwo_carbs.to_f * 4))/9
    printout
  end

      
 
  
end