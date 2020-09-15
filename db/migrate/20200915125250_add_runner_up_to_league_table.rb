class AddRunnerUpToLeagueTable < ActiveRecord::Migration[6.0]
  def change
    add_column :league_tables, :runner_up, :string
  end
end
