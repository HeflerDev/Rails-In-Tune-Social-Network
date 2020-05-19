require 'rails_helper'

RSpec.describe Follow, type: :model do
  describe 'associations' do
    it { should belong_to(:user_following) }
    it { should belong_to(:user_followed) }
  end
end
