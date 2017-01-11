require 'rails_helper'

RSpec.describe Wedding, type: :model do
  describe 'Wedding Validations' do
    it 'cannot have the same name as another wedding' do
      ceremony = create(:ceremony)
      reception = create(:reception)
      create(
        :wedding,
        name: 'this_wedding',
        ceremony_id: ceremony.id,
        reception_id: reception.id
      )
      expect(
        build(
          :wedding,
          name: 'this_wedding',
          reception_id: 2,
          ceremony_id: 2,
        )
      ).to_not be_valid
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
      ceremony = create(:ceremony)
      reception = create(:reception)
      expect(
        build(
          :wedding,
          ceremony_id: ceremony.id,
          reception_id: reception.id,
        )
      ).to be_valid
    end
  end
end
