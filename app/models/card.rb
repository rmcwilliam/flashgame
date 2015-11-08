class Card < ActiveRecord::Base
  validates :deck_id, presence: true
  validates :question, presence: true
  validates :answer, presence: true

  belongs_to :deck
  has_many :guesses
  has_many :users, through: :guesses
end
