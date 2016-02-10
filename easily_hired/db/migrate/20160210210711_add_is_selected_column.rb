class AddIsSelectedColumn < ActiveRecord::Migration
  def change
    add_column :applications, :is_selected, :boolean
  end
end
