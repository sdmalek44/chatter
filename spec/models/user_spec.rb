require 'rails_helper'

describe User, type: :model do
  describe 'relationships' do
    it { should have_many :messages }
  end

  describe 'instance methods' do
    describe '#username' do
      let(:user) { User.create(email: 'tim@tim.tim', password: 'timtim', password_confirmation: 'timtim') }

      it 'splits the email and capitalizes the prefix' do
        expect(user.username).to eq('Tim')
      end
    end
  end
end