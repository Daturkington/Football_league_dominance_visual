class CreateLeagueTables < ActiveRecord::Migration[6.0]
  def change
    create_table :league_tables do |t|
      t.string :name

      t.timestamps
    end
  end
end
