class CreateMemories < ActiveRecord::Migration[7.0]
  def change
    create_table :memories do |t|
      t.string :card_slot
      t.string :internal
      t.string :others
      t.integer :device_id

      t.timestamps
    end
  end
end
