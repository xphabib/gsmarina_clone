class CreateComms < ActiveRecord::Migration[7.0]
  def change
    create_table :comms do |t|
      t.text :wlan
      t.text :bluetooth
      t.text :gps
      t.string :nfc
      t.string :infrared_port
      t.string :radio
      t.text :usb
      t.integer :device_id

      t.timestamps
    end
  end
end
