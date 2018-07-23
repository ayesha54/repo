class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :quantity

      t.timestamps null: false
    end
     add_reference :order_details, :order, foreign_key: true
      add_reference :order_details, :product, foreign_key: true
  end
end
