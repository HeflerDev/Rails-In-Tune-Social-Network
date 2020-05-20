require 'rails_helper'

RSpec.describe Follow, type: :model do
  describe 'associations' do
    it { should belong_to(:user_following) }
    it { should belong_to(:user_followed) }
  end

  describe 'methods' do
    it "properly works" do
      user_one = User.create(username:'Example', fullname:'FullExample')
      user_two = User.create(username:'Example2', fullname:'FullExample2')
      Follow.create(follower_id: user_one.id, followee_id: user_two.id)
      expect(user_one.is_following?(user_two)).to be true
      expect(user_two.is_following?(user_one)).to be false
      expect(user_two.is_being_followed?(user_one)).to be true
      expect(user_one.is_being_followed?(user_two)).to be false

    end
  end
end
