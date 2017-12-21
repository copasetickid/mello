class Card < ApplicationRecord
  belongs_to :list
  has_many :card_assignees
  has_many :assignees, through: :card_assignees, source: :user

  validates :title, presence: true
end
