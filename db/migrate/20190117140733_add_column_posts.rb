class AddColumnPosts < ActiveRecord::Migration[5.2]
  def change
    
    remove_column :posts, :place, :string
    
    add_column :posts, :title, :string
    add_column :posts, :image, :json
  end
end
