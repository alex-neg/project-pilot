class CreateContexts < ActiveRecord::Migration[8.0]
  def change
    create_table :contexts do |t|
      t.references :excavation_unit, null: false, foreign_key: true
      t.references :recorded_by, null: false, foreign_key: {to_table: :users}
      t.references :project_horizon, null: false, foreign_key: true
      t.integer :context_type, null: false, default: 0  
      t.integer :brightness
      t.integer :hue
      t.integer :colour
      t.integer :compaction
      t.text :summary_description
      t.text :context_formation
      t.integer :phase
      t.string :sub_phase

      t.timestamps
    end
  end
end
