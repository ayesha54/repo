class Deal < ActiveRecord::Base
	has_many :users , through: :loyality_card
	has_many :comments, as: :commentable
end
