class Board < ApplicationRecord
  has_many :board_members
  has_many :members, through: :board_members

  validates :name, presence: true
end
