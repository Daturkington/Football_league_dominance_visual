class AddChampionsColumnToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :champion, :string, array: true, default: []
  end
end
