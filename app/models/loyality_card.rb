class LoyalityCard < ActiveRecord::Base
  belongs_to :deal
  belongs_to :user
  has_one :payment_history
end
