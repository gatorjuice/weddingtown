require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'Location Validations' do
    it 'can be used by many receptions' do
      reception = create(:reception)
    end
  end
end
