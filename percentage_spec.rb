require 'rspec'
require_relative 'percentage'

describe Percentage do
    before do
      $stdout = StringIO.new
      
      @percentage = Percentage.new(1, 325, 28)
    end
    
    it "has an initial weight" do
      @percentage.weight.should == 325
    end
    
    it "has an initial phase" do
      @percentage.phase.should == 1
    end
    
    it "has an initial percent" do
      @percentage.pcnt.should == 28
    end
    
    it "has an lbm rate" do
      @percentage.lbm_rate.should ==  13
    end
    
    it "has a lean body mass number" do
      @percentage.lbm_number.should == 234.0
    end
    
    it "has maint calories" do
      @percentage.maint_calories.should == 3042.0
    end

  end