class AddAdressToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :address, :string
  end
end
