class Guess < ActiveRecord::Base
  validates :card_id, presence: true
  validates :user_id, presence: true
  validates :correct, presence: true

  belongs_to :user
  belongs_to :card
end
