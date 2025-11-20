class ChangeFieldsToIntegers < ActiveRecord::Migration[8.0]
  def change
    change_column :contexts, :context_type, :integer, null: false, default: 0
    change_column :contexts, :brightness,    :integer
    change_column :contexts, :hue,           :integer
    change_column :contexts, :colour,        :integer
    change_column :contexts, :compaction,    :integer
  end
end
