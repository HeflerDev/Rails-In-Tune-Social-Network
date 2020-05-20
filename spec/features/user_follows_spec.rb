require 'rails_helper'

RSpec.feature 'User association:' do
  let(:user_one) { User.create(username:'Example',fullname:'FullExample', biography:'Lorem Ipsum') }

  context 'When click to follow/unfollow' do
    it 'confirm that follow user works' do
      user_two = User.create(username:'Example2', fullname:'FullExample2', biography:'Lorem Ipsum2')
      log_in(user_one.username)
      expect(page).to have_content(user_two.username)
      expect(page).to have_current_path(root_path)
      click_on('Follow User')
      expect(page).to have_no_content(user_two.username)
      expect(user_one.followees.include?(user_two)).to be true
      expect(user_two.followers.include?(user_one)).to be true
    end

    it 'confirm that unfollow user works' do
      user_two = User.create(username:'Example2', fullname:'FullExample2', biography:'Lorem Ipsum2')
      Follow.create(follower_id: user_one.id, followee_id: user_two.id)
      log_in(user_one.username)
      click_on('#Friends')
      expect(page).to have_content(user_two.username)
      click_on('Unfollow')
      expect(user_one.followees.include?(user_two)).to be false
      expect(user_two.followers.include?(user_one)).to be false
    end
  end
  def log_in(username)
    visit login_path
    fill_in 'session_username', with: username
    click_button('Log In')
  end
end
