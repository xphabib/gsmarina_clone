class CreateDisplays < ActiveRecord::Migration[7.0]
  def change
    create_table :displays do |t|
      t.string :type
      t.string :size
      t.string :resolution
      t.string :protection
      t.integer :device_id
      t.text :others
      t.timestamps
    end
  end
end
