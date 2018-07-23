class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :liker_id
      t.integer :liking_id
     

      t.timestamps null: false
    end
    add_index :friendships , :liker_id  #we are doing this so that user cannot like other user more than once 
    add_index :friendships , :liking_id
    add_index :friendships , [:liker_id, :liking_id], unique: true
  end
end
