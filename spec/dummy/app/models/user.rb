class User < ActiveRecord::Base
  include Achievements
  
  attr_accessor :comment_number_test
end