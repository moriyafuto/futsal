class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|

      t.integer :organizer_id
      t.string :title
      t.text :detail
      t.date :match_date
      t.time :start_time
      t.time :end_time
      t.integer :fee
      t.string :facility
      t.json :image
      t.integer :level
      t.integer :team_max
      t.integer :champ_id
      t.integer :semichamp_id

      t.timestamps
    end
  end
end
