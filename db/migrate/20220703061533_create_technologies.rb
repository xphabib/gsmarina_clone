class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.integer :device_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
