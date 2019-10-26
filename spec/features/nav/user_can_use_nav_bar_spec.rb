require 'rails_helper'

describe 'when user can see the nav bar' do
  it 'they can create a new user' do
    visit root_path

    click_on 'Create Account'

    expect(current_path).to eq(new_user_registration_path)

    fill_in :user_email, with: 'puppy47@email.com'
    fill_in :user_password, with: 'barkbarkbark'
    fill_in :user_password_confirmation, with: 'barkbarkbark'

    click_on 'Sign up'

    expect(current_path).to eq(root_path)
  end

  it 'can sign in as a previous user' do
    user =  User.create(email: 'tim@tim.tim', password: 'timtim', password_confirmation: 'timtim')

    visit root_path

    first(:link, 'Sign In').click

    expect(current_path).to eq(new_user_session_path)

    fill_in :user_email, with: user.email
    fill_in :user_password, with: 'timtim'

    click_on 'Log in'

    expect(current_path).to eq(root_path)
  end

  it 'can click back to the root path' do
    visit new_user_session_path

    click_on 'Chatter'

    expect(current_path).to eq(root_path)
  end
end