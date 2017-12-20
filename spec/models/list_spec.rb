require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'Assocations' do
    it { should belong_to(:board) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
  end
end
