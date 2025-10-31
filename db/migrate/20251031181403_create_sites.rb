class CreateSites < ActiveRecord::Migration[8.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
