class AddLinkToBurgersAndRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_reference :burgers, :restaurant, index: true
  end
end
