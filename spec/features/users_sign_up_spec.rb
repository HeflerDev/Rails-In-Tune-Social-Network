require 'rails_helper'

RSpec.feature 'Guest Sign up:' do
  context 'when guest visits the sign up page' do

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

    it 'Doesnt log with invalid username' do
      sign_up('', 'FullExample','Some Description')
      expect(page).to have_content("Username can't be blank")
      expect(page).to have_content("Username is too short (minimum is 6 characters)")
      expect(page).to have_current_path '/users'
      sign_up('John','FullExample','Some Description')
      expect(page).to have_content("Username is too short (minimum is 6 characters)")
      expect(page).to have_current_path '/users'
    end

    it "Doesn't log with invalid Fullname" do
      sign_up('Example','','Some Description')
      expect(page).to have_content("Fullname can't be blank")
      expect(page).to have_content("Fullname is too short (minimum is 3 characters)")
      expect(page).to have_current_path '/users'
      sign_up('Example','xy','Some Description')
      expect(page).to have_content("Fullname is too short (minimum is 3 characters)")
      expect(page).to have_current_path '/users'
    end
  end
end
