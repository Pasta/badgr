class <%= name.camelize %>AchievementObserver < ActiveRecord::Observer
  observe :some_model
  
  def after_create(some_model)
    <%= name.camelize %>Achievement.award_achievements_for(some_model.user) if ('your conditions here')
  end
end