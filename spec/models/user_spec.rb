require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(username: 'Example', fullname: 'Full Example', biography: 'Lorem ipsum Dolor sit amet nunquam')
  end
  context 'on creation' do
    it 'is valid' do
      expect(subject).to be_valid
    end

    it 'is invalid withouth username' do
      subject.username = nil
      expect(subject).to be_invalid
    end

    it 'is invalid with short username' do
      subject.username = 'John'
      expect(subject).to be_invalid
    end

    it 'is invalid witouth fullname' do
      subject.fullname = nil
      expect(subject).to be_invalid
    end

    it 'is invalid with short fullname' do
      subject.fullname = 'J'
      expect(subject).to be_invalid
    end
    it 'is still valid withouth biography' do
      subject.biography = nil
      expect(subject).to be_valid
    end
    describe 'associations' do
      it { should have_many(:opinions) }
    end
  end
end
