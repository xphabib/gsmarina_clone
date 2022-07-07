class AddIsCloneToDevices < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :is_clone, :boolean, default: false
  end
end
