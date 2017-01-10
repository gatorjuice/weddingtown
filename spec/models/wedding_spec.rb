require 'rails_helper'

RSpec.describe Wedding, type: :model do
  describe 'Wedding Validations' do
    it 'cannot have the same name as another wedding' do
      create(:wedding, name: 'this_wedding')
      expect(build(:wedding, name: 'this_wedding')).to_not be_valid
    end

    it 'is invalid without a name' do
      expect(build(:wedding, name: nil)).to_not be_valid
    end

    it 'is invalid without a ceremony_id' do
      expect(build(:wedding, ceremony_id: nil)).to_not be_valid
    end

    it 'is invalid without a reception_id' do
      expect(build(:wedding, reception_id: nil)).to_not be_valid
    end

    it 'is valid with a name, reception_id, and ceremony_id' do
      expect(build(:wedding)).to be_valid
    end
  end
end
