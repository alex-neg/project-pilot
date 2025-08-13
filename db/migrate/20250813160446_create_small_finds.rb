class CreateSmallFinds < ActiveRecord::Migration[8.0]
  def change
    create_table :small_finds do |t|
      t.references :project, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :find_type

      t.timestamps
    end
  end
end
