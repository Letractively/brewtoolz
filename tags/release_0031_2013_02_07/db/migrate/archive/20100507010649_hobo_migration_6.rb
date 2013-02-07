class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :recipe_user_shareds, :last_viewed, :datetime
    
    add_column :recipes, :last_viewed, :datetime
  end

  def self.down
    remove_column :recipe_user_shareds, :last_viewed
    
    remove_column :recipes, :last_viewed
  end
end
