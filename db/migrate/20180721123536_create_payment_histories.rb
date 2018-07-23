class CreatePaymentHistories < ActiveRecord::Migration
  def change
    create_table :payment_histories do |t|
      t.references :loyality_card, index: true, foreign_key: true
      t.string :funds

      t.timestamps null: false
    end
  end
end
