class CreateKvfeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :kvfeatures do |t|
      t.string :key
      t.text :value
      t.integer :technology_id

      t.timestamps
    end
  end
end
