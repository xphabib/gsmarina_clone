class CreateLaunches < ActiveRecord::Migration[7.0]
  def change
    create_table :launches do |t|
      t.date :announced
      t.string :status
      t.integer :device_id

      t.timestamps
    end
  end
end
