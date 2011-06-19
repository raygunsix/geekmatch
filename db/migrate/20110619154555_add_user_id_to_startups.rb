class AddUserIdToStartups < ActiveRecord::Migration
  def self.up
    add_column :startups, :user_id, :integer
  end

  def self.down
    remove_column :startups, :user_id
  end
end
