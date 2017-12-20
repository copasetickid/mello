class Board < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :board_members
  has_many :members, through: :board_members
  has_many :lists

  validates :name, presence: true
end
