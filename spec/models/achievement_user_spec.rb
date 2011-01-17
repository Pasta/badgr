require 'spec_helper'


describe User do
  it {should have_many :achievements}
end

describe Achievement do
  class CommentsAchievement < Achievement
    
    level 1, :quota => 5
    level 2, :quota => 10

    def self.award_achievement_for user
      return unless user
      levels.each do | level |
        if user.comment_number_test == level[:quota]
          user.award_with(self, level) 
        end
      end
    end
  end
  
   class TwoCommentsAchievement < Achievement

     
      
      def self.award_achievement_for user
        return unless user
        if user.comment_number_test == 2
          user.award_with(self) 
        end
      end
    end
  
  describe "simple achievement" do
   

    it "should award user with two comments achievement" do
      user = User.new
      user.comment_number_test = 2
      TwoCommentsAchievement.award_achievement_for user

      user.achievements.size.should == 1
      user.achievements[0].type.should == "TwoCommentsAchievement"
      user.achievements[0].level.should == nil
    end
  end

  describe "level type comment achievement" do
    
    it "should have two levels" do
      CommentsAchievement.levels.size.should == 2
    end
    
    
    it "should be awarded with medium commenter" do
      user = User.new
      user.comment_number_test = 5
      
      CommentsAchievement.award_achievement_for user
      
      user.achievements.size.should == 1
      user.achievements[0].level.should == 1
    end
    
    it "should be awarded with big commenter" do
      user = User.new
      user.comment_number_test = 10
      
      CommentsAchievement.award_achievement_for user
      
      user.achievements.size.should == 1
      user.achievements[0].level.should == 2
      
    end
    
  end
end