class Achievement < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :type
  before_validation do
    self.type = self.class.to_s
  end
  
  class << self
    
    def levels
      @levels ||= []
    end

    def level(level, options = {})
      if not levels.include? ({:level => level, :quota => options[:quota]}) then
        levels << {:level => level, :quota => options[:quota]}
      end
    end
    
  end
end