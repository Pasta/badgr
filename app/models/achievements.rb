module Achievements
  extend ActiveSupport::Concern
  
  
  included do
    has_many :achievements
  end
  
  
  # def self.included(base)
  #     base.class_eval do
  #       
  #     end
  #   end
  
  
     def award_with(achievement, options = {})
      achievement.create!(:user => self, :level => options[:level])
    end
  
  

    def has_achievement?(achievement, level = nil)
      conditions = {:type => achievement.to_s, :user_id => self.id}    
      conditions[:level] = level if level
      achievements.first(:conditions => conditions).present?
    end
end