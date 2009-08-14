class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.datetime :posted_at
      t.float :amount
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
