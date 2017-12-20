require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'Assocations' do
    it { should belong_to(:list) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
  end
end
