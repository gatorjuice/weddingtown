require 'rails_helper'

RSpec.describe Reception, type: :model do
  describe 'Reception Validations' do
    it 'is invalid without a start_time' do
      expect(build(:reception, start_time: nil)).to_not be_valid
    end

    it 'is invalid without a end_time' do
      expect(build(:reception, end_time: nil)).to_not be_valid
    end

    it 'is invalid without a location_id' do
      expect(build(:reception, location_id: nil)).to_not be_valid
    end

    it 'is valid with a location_id, start_time, and end_time' do
      expect(build(:reception)).to be_valid
    end

    it 'cannot have a start_time later than the end_time' do
      expect(
        build(
          :reception,
          start_time: "2017-01-11 10:13:39",
          end_time: "2017-01-11 9:13:39",
        )
      ).to_not be_valid
    end
  end
end
