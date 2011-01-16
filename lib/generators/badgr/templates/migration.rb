class CreateAchievementTable < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.integer :user_id
      t.string  :type
      t.string :name
      t.integer :level
      t.timestamps
    end
    
  end
  
  def self.down
    drop_table :achievements
  end
end