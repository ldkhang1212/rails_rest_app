class Users < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :username, :string
      t.column :full_name, :string
      t.column :email_address, :string
      t.column :address, :string
      #t.column :reputation, :int
    end
  end

  def self.down
    drop_table :users
  end
end
