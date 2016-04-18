class Posts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :description, :string
      t.column :image, :string
    end
  end

  def self.down
    drop_table :posts
  end
end
