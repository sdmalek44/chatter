require 'rails_helper'

describe 'when logged in' do
  let(:user) { User.create(email: 'tim@tim.tim', password: 'timtim', password_confirmation: 'timtim') }

  it 'can add a message' do
    sign_in user

    visit root_path

    fill_in :message_body, with: 'hello'

    expect(page).to have_button('Send')
  end
end