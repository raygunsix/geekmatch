class AddSkillsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :skills, :string
  end

  def self.down
    remove_column :users, :skills
  end
end
