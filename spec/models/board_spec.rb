require 'rails_helper'

RSpec.describe Board, type: :model do
  context "Validations" do
    it { should validate_presence_of(:name) }
  end
end
