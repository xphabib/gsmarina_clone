class CreateSelfieCameras < ActiveRecord::Migration[7.0]
  def change
    create_table :selfie_cameras do |t|
      t.text :single
      t.text :features
      t.text :video
      t.integer :device_id

      t.timestamps
    end
  end
end
