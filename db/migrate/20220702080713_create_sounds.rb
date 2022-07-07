class CreateSounds < ActiveRecord::Migration[7.0]
  def change
    create_table :sounds do |t|
      t.text :loudspeaker
      t.string :jack_3_5
      t.integer :device_id

      t.timestamps
    end
  end
end
