class AddColumnsToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :hours, :string
    add_column :restaurants, :phone, :string
    add_column :restaurants, :website, :string
    add_column :restaurants, :price_range, :string
    add_column :restaurants, :num_burgers, :string
    add_column :restaurants, :description , :string
  end
end
