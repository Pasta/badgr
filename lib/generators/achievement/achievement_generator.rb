class AchievementGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  
  def generate_achievement
     template "achievement.rb", "app/models/achievements/#{name.underscore}_achievement.rb"
     template "achievement_observer.rb", "app/models/achievements/#{name.underscore}_achievement_observer.rb"
     template "achievement_test.rb", "test/unit/achievements/#{name.underscore}_achievement_test.rb"
  end
  
  
  def show_readme
     readme "README" if behavior == :invoke
  end  
  
end