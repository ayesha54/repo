class Product < ActiveRecord::Base
	has_and_belongs_to_many :category
	has_many :order_details
	has_many :comments, as: :commentable
end
