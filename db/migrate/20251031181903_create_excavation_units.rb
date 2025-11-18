class CreateExcavationUnits < ActiveRecord::Migration[8.0]
  def change
    create_table :excavation_units do |t|
      t.string :name
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
