class AddYearToLeagueTable < ActiveRecord::Migration[6.0]
  def change
    add_column :league_tables, :year, :string
  end
end
