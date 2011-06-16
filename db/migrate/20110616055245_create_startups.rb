class CreateStartups < ActiveRecord::Migration
  def self.up
    create_table :startups do |t|
      t.string :title
      t.string :city
      t.text :description
      t.string :skills

      t.timestamps
    end
  end

  def self.down
    drop_table :startups
  end
end
