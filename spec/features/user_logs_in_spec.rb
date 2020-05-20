require 'rails_helper'

RSpec.feature 'User log in: ' do
  let(:user) { User.create(username:'Example',fullname:'FullExample', biography:'Lorem Ipsum') }
  context 'When Loggin In' do
    it 'is valid with the right user' do
      log_in(user.username)
      expect(page).to have_content('List of Users')
    end

    it 'is invalid with the wrong user' do
      log_in('Anything Else')
      expect(page).to have_content("The User Doesn't Exists")
    end

    it 'Sign up button works' do
      visit login_path
      click_on('Sign Up!')
      expect(page).to have_current_path(sign_up_path)
    end

    def log_in(username)
      visit login_path
      fill_in 'session_username', with: username
      click_button('Log In')
    end
  end
end
