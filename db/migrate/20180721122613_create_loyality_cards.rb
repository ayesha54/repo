class CreateLoyalityCards < ActiveRecord::Migration
  def change
    create_table :loyality_cards do |t|
      t.references :deal, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
