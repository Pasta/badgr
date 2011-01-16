require 'spec_helper'


describe User do
  it {should have_many :achievements}
end


describe Achievement do


  class TwoCommentsAchievement < Achievement

    def self.award_achievement_for user
      return unless user
      if user.comment_number_test == 2
        user.award_with(self) 
      end
    end
  end
  
  
  
    it "should award user with two comments achievement" do
      user = User.new
      user.comment_number_test = 2
      TwoCommentsAchievement.award_achievement_for user
      
      assert_equal 1, user.achievements.size
      assert_equal "TwoCommentsAchievement", user.achievements[0].type
    end

end