require 'rails_helper'

RSpec.feature 'User make post:' do
  context 'When user creates a post' do
    it 'post with valid data' do
      sign_up('Example', 'FullExample', 'Biography')
      click_on('New Opinion')
      post_opinion('Opinion Title', 'Opinion Body')
      expect(page).to have_content('Opinion Title')
      expect(page).to have_content('Opinion Body')
    end

    it "doesn't post if invalid" do
      sign_up('Example', 'FullExample', 'Biography')
      click_on('New Opinion')
      post_opinion('', 'Opinion Body')
      expect(page).to have_content("Title can't be blank")
      post_opinion('Example', '')
      expect(page).to have_content("Text can't be blank")
      expect(page).to have_content('Text is too short (minimum is 11 characters)')
      post_opinion('', '')
      expect(page).to have_content('3 errors found')
    end
  end
end
