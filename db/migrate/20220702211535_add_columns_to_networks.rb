class AddColumnsToNetworks < ActiveRecord::Migration[7.0]
  def change
    add_column :networks, :brands_2g, :string
    add_column :networks, :gprs, :string
    add_column :networks, :edge, :string
  end
end
