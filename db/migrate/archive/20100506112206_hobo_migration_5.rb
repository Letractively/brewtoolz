class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :log_messages, :recipe_id, :integer
  end

  def self.down
    remove_column :log_messages, :recipe_id
  end
end
