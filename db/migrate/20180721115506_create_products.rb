class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price

      t.timestamps null: false
    end
     add_reference :products, :category, foreign_key: true
  end
end
