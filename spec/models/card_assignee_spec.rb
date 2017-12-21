require 'rails_helper'

RSpec.describe CardAssignee, type: :model do
  describe "Assocations" do
    it { should belong_to(:card) }
    it { should belong_to(:user) }
  end
end
