module Achievements
  
  def self.included(base)
    base.class_eval do
      has_many :achievements
    end
  end
  
  def award_with(achievement)
    achievement.create!(:user => self)
  end
end