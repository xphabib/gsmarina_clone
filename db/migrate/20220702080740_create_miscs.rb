class CreateMiscs < ActiveRecord::Migration[7.0]
  def change
    create_table :miscs do |t|
      t.text :colors
      t.text :models
      t.text :sar
      t.text :price
      t.integer :device_id

      t.timestamps
    end
  end
end
