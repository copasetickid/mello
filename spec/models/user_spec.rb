require 'rails_helper'

RSpec.describe User, type: :model do
  context "Associations" do
    it { should have_many(:board_members) }
    it { should have_many(:boards).through(:board_members)}
  end
end
