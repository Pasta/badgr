require 'spec_helper'


describe Achievements do
  
  class CommentsAchievement < Achievement
    
    level 1, :quota => 5, :name => "medium commenter"
    level 2, :quota => 10, :name => "big commenter"

    def self.award_achievement_for user
      return unless user
      levels.each do | level |
        if user.comment_number_test == level[:quota]
          user.award_with(self, level) 
        end
      end
    end
  end
  
  
  before do
    @user = User.new
    @user.save
  end
  
  it "should have achievement medium commenter" do
    @user.comment_number_test = 5
    
    CommentsAchievement.award_achievement_for @user
    
    assert @user.has_achievement?(CommentsAchievement, 1)
    
    
  end
  
  it "should have achievement big commenter" do
    @user.comment_number_test = 10
    
    CommentsAchievement.award_achievement_for @user
    
    assert @user.has_achievement?(CommentsAchievement, 2)
  end
  
  
  
  
end