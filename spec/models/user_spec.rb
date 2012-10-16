require 'spec_helper'

describe "User Model" do
  let(:user) { User.new first_name: 'Fernando' }
  it 'can be created' do
    user.should_not be_nil
  end
end
