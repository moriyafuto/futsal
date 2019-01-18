class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|

      t.integer :user_id
      t.integer :evaluating_team
      t.integer :result
      t.text :coment
      t.timestamps
    end
  end
end
