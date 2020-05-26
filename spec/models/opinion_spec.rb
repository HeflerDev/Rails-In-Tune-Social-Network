require 'rails_helper'

RSpec.describe Opinion, type: :model do
  let(:user) { User.create(username: 'Example', fullname: 'FullExample', biography: 'Lorem Ipsum') }

  context 'on creation' do
    subject do
      described_class.new(title: 'Title', text: 'Lorem Ipsum', author_id: user.id)
    end
    it 'is valid' do
      expect(subject).to be_valid
    end
    it 'is invalid when title is empty' do
      subject.title = nil
      expect(subject).to be_invalid
    end
    it 'is invalid when text is empty' do
      subject.text = nil
      expect(subject).to be_invalid
    end
    it 'is invalid without user_id' do
      subject.author_id = nil
      expect(subject).to be_invalid
    end
  end
  describe 'associations' do
    it { should belong_to(:author) }
  end
end
