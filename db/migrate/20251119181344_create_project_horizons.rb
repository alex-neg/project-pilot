class CreateProjectHorizons < ActiveRecord::Migration[8.0]
  def change
    create_table :project_horizons do |t|
      t.string :start_period
      t.string :end_period
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
