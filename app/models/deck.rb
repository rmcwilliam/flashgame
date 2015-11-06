class Deck < ActiveRecord::Base

  validates_presence_of :title

  belongs_to :user
  has_many :cards
end
