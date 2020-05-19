require 'rails_helper'

RSpec.feature 'Guest Sign up:' do
  describe 'when guest visits the sign up page' do
    it 'has the correct content' do
      visit sign_up_path
      expect(page).to have_content('First, your username')
      expect(page).to have_content('Now, your fullname')
      expect(page).to have_content('Add a short description about yourself')
      expect(page).to have_content('Then, upload a profile picture!')
      expect(page).to have_current_path '/sign_up'
    end

    it 'Log in Successfully' do
      sign_up('Example','FullExample','Some Description')
      expect(page).to have_content('Example')
      expect(page).to have_content('FullExample')
      expect(page).to have_content('"Some Description"')
    end
  end


  def sign_up(username, fullname, bio)
    visit sign_up_path
    fill_in 'user_username', with: username
    fill_in 'user_fullname', with: fullname
    fill_in 'user_biography', with: bio
    click_button 'Join Today!'
  end
end
