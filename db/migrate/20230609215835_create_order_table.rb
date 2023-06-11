class CreateOrderTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :dish
      t.string :quantity
    end

  end
end
