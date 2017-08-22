class CreateBurgers < ActiveRecord::Migration[5.1]
  def change
    create_table :burgers do |t|
      t.string :bun
      t.string :steak
      t.string :cheese
      t.string :sauce
      t.string :garnish
      t.string :side
      t.string :summary

      t.timestamps
    end
  end
end
