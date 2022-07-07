class CreateBatteries < ActiveRecord::Migration[7.0]
  def change
    create_table :batteries do |t|
      t.text :type
      t.text :charging
      t.integer :device_id

      t.timestamps
    end
  end
end
