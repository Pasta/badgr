require 'spec_helper'

describe Achievement do

  describe "creation" do
    
    
    it { should belong_to(:user) }  
      
    it "should be possible to create an achievement" do
      achievement = Achievement.new
      achievement.should be_valid
      achievement.save!

      assert_equal 'Achievement', achievement.type
    end

   
  end

end