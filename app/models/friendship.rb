class Friendship < ActiveRecord::Base
	belongs_to :liker , foreign_key: 'liker_id' , class_name: 'User'
	belongs_to :liking , foreign_key: 'liking_id' , class_name: 'User'
end
