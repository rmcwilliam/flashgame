class Guess < ActiveRecord::Base
  belongs_to :user
  belongs_to :card, through: :deck
end
