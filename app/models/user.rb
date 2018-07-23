class User < ActiveRecord::Base
	has_many :orders
	has_one :loyality_card
	has_many :deals , through: :loyality_card
	has_one :payment_history , through: :loyality_card
	has_many :comments, as: :commentable

	
    has_many :active_friendships, foreign_key: :liker_id , class_name:'Friendship'
    has_many :likers, through: :active_friendships , source: :liker

    has_many :active_friendships, foreign_key: :liking_id , class_name:'Friendship'
    has_many :likings, through: :active_friendships , source: :liking


end
