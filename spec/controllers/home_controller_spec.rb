require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  render_views

  describe 'GET index' do
    let(:user) { User.create(email: 'tim@tim.tim', password: 'timtim', password_confirmation: 'timtim') }

    before do
      allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(true)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    end

    it 'should return list of messages in html' do
      get :index, format: :html

      expect(response).to be_success
    end
  end
end