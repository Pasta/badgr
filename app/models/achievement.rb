class Achievement < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :type
  before_validation do
    self.type = self.class.to_s
  end
end