class CreateMatchApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :match_applies do |t|

      t.integer :match_id
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end
