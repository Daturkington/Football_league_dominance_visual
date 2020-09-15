class AddChampionToLeagueTable < ActiveRecord::Migration[6.0]
  def change
    add_column :league_tables, :champion, :string
  end
end
