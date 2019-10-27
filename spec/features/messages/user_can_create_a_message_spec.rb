require 'rails_helper'

describe 'when logged in' do
  let(:user) { User.create(email: 'tim@tim.tim', password: 'timtim', password_confirmation: 'timtim') }

  before do
    allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(true)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end

  context 'for single message' do
    it 'can add a message' do
      visit root_path

      fill_in :message_body, with: 'hello'

      expect(page).to have_button('Send')
    end
  end

  context 'for all messages' do
    before do
      5.times { user.messages.create(body: 'hello') }
    end

    it 'can see all messages' do
      visit root_path

      expect(page).to have_content('Tim: hello', count: 5)
    end
  end
end