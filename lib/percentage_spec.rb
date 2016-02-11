require 'rspec'
require_relative 'percentage'

describe Percentage do
    before do
      $stdout = StringIO.new
      
      @percentage = Percentage.new(1, 325, 28)
    end
    
    it "has an initial weight" do
      expect(@percentage.weight).to eq(325)
    end
    
    it "has an initial phase" do
      expect(@percentage.phase).to eq(1)
    end
    
    it "has an initial percent" do
      expect(@percentage.pcnt).to eq(28)
    end
    
    it "has an lbm rate" do
      expect(@percentage.lbm_rate).to eq(13)
    end
    
    it "has a lean body mass number" do
      expect(@percentage.lbm_number).to eq(234.0)
    end
    
    it "has maint calories" do
      expect(@percentage.maint_calories).to eq(3042.0)
    end

  end