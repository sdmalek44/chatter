require 'rails_helper'

describe Message, type: :model do
  describe 'relationships' do
    it { should belong_to :user }
  end
end