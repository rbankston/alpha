#Percentage measurement portion

class Percentage

  attr_accessor :phase
  attr_accessor :pcnt
  attr_accessor :weight
  attr_reader :wo_calories
  attr_reader :wo_protein
  attr_reader :nwo_protein
  attr_reader :nwo_calories
  attr_reader :nwo_fat
  attr_reader :wo_fat
    
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
  

      
 
  
end