require 'rails_helper'

RSpec.describe BoardMember, type: :model do
  describe "Associations" do
    it { should belong_to(:board) }
    it { should belong_to(:member).class_name('User') }
  end
end
