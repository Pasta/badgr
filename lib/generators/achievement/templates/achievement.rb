class <%= name.camelize %>Achievement < Achievement

  level 1, :quota => 5, :name => "small achievement"
 # level 2, :quota => 10, :name => "big commenter"

  def self.award_achievement_for user
    return unless user
   # levels.each do | level |
   #  if user.comment_number_test == level[:quota]
   #      user.award_with(self, level) 
   #    end
   #  end
  end
end