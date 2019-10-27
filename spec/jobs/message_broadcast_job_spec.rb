require 'rails_helper'

describe MessageBroadcastJob do
  context '#perform' do
    let(:user) { User.create(email: 'tim@tim.tim', password: 'timtim', password_confirmation: 'timtim')}
    let(:message) { Message.create(body: 'hello', user_id: user.id) }
    let(:call) { subject.perform(message) }

    it 'calls message controller render' do
      expect_any_instance_of(MessageBroadcastJob).to receive(:render_message)

      call
    end
  end
end
