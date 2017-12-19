require 'rails_helper'

RSpec.describe Board, type: :model do
  context "Validations" do
    it { should validate_presence_of(:name) }
  end

  context "Associations" do
    it { should have_many(:board_members) }
    it { should have_many(:members).through(:board_members)}
  end
end
