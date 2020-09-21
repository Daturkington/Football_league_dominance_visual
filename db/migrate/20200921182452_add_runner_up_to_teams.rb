class AddRunnerUpToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :runner_up, :string, array: true, default: []
  end
end
