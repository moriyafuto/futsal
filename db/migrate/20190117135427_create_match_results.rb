class CreateMatchResults < ActiveRecord::Migration[5.2]
  def change
    create_table :match_results do |t|

      t.integer :match_id
      t.integer :usera_id
      t.integer :point_a
      t.integer :userb_id
      t.integer :point_b

      t.timestamps
    end
  end
end
