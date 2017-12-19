class BoardMember < ApplicationRecord
  belongs_to :board
  belongs_to :member, class_name: 'User'
end
