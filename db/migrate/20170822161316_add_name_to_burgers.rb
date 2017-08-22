class AddNameToBurgers < ActiveRecord::Migration[5.1]
  def change
    add_column :burgers, :name, :string
  end
end
