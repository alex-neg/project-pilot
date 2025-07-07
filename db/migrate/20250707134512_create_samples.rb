class CreateSamples < ActiveRecord::Migration[8.0]
  def change
    create_table :samples do |t|
      t.text :name
      t.text :description
      t.integer :sample_type
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
