class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms do |t|
      t.string :os
      t.string :chipset
      t.string :cpu
      t.string :gpu
      t.integer :device_id

      t.timestamps
    end
  end
end
