class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :date
      t.string :ammount
      t.string :address

      t.timestamps null: false
    end
     add_reference :orders, :user, foreign_key: true
  end
end
