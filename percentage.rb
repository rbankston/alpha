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
      lbm_rate = 26
    elsif pcnt < 19
      lbm_rate = 15
    elsif pcnt < 22
      lbm_rate = 14
    else pcnt >= 23
      lbm_rate = 13
    end
    puts "Percentage to multiply for calculation #{lbm_rate}"
  end  
  
  def lbm_number
    ffm = (100.00 - pcnt)/100.00
    lbm_number = ffm * weight
    puts "The amount of lean body mass is #{lbm_number} pounds"
  end
  
 
  
end