class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :image
      t.string :price
      t.string :description
    end
  end
end
