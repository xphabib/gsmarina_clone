class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :title
      t.string :name
      t.date :release_date
      t.integer :brand_id
      t.string :link
      t.string :image_url
      t.timestamps
    end
  end
end
