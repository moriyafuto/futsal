class MatchResults < ActiveRecord::Migration[5.2]
  def change
    drop_table :match_results
  end
end
