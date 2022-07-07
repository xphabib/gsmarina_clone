class CreateBodies < ActiveRecord::Migration[7.0]
  def change
    create_table :bodies do |t|
      t.text :dimensions
      t.string :weight
      t.string :build
      t.string :sim
      t.integer :device_id

      t.timestamps
    end
  end
end
