require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  render_views

  describe 'POST create' do
    let(:user) { User.create(email: 'tim@tim.tim', password: 'timtim', password_confirmation: 'timtim') }

    before do
      allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(true)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    end

    it 'should successfully create a message' do\
      post :create, params: { message: { body: 'hello' } }

      expect(response.status).to eq(302)
      expect(Message.count).to eq(1)
    end
  end
end