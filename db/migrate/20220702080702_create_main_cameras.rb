class CreateMainCameras < ActiveRecord::Migration[7.0]
  def change
    create_table :main_cameras do |t|
      t.text :quad
      t.text :features
      t.text :video
      t.integer :device_id

      t.timestamps
    end
  end
end
