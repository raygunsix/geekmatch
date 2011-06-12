class AddIdeasToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :ideas, :string
  end

  def self.down
    remove_column :users, :ideas
  end
end
