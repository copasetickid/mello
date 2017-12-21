require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'Assocations' do
    it { should belong_to(:list) }
    it { should have_many(:card_assignees) }
    it { should have_many(:assignees).through(:card_assignees).source(:user) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
  end
end
