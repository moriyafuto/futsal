class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    
    remove_column :users, :first_name, :string
    remove_column :users, :family_name, :string
    
    add_column :users, :password_digest, :string
    add_column :users, :icon, :string
    add_column :users, :age_ave, :int
    add_column :users, :pref, :int
    add_column :users, :city, :string
    add_column :users, :home, :string
    add_column :users, :image, :json

    
  end
end
