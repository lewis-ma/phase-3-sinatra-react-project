class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :image
      t.string :price
      t.string :description
    end

  end
end
