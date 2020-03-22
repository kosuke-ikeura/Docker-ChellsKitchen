class CreateFlavors < ActiveRecord::Migration[5.2]
  def change
    create_table :flavors do |t|
      t.string :name
      t.integer :summit_price
      t.integer :status
      t.integer :perchace_price
      t.text :image

      t.timestamps
    end
  end
end
