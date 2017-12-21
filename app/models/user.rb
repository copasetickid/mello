class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :boards, foreign_key: "creator_id"
  has_many :board_members, foreign_key: "member_id"
  has_many :memberships, through: :board_members, source: :board
  has_many :card_assignees
  has_many :cards, through: :card_assignees
end
