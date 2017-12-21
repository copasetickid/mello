require 'rails_helper'

RSpec.describe User, type: :model do
  context "Associations" do
    it { should have_many(:board_members).with_foreign_key('member_id') }
    it { should have_many(:memberships).through(:board_members).source(:board) }
    it { should have_many(:boards).with_foreign_key('creator_id') }
    it { should have_many(:card_assignees) }
    it { should have_many(:cards).through(:card_assignees) }
  end
end
