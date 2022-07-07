class AddIsBrandDevicesCloneToBrands < ActiveRecord::Migration[7.0]
  def change
    add_column :brands, :is_brand_devices_clone, :boolean, default: false
  end
end
