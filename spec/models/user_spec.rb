require 'spec_helper'

describe User do
  it { should have_many :devices }
  it { should have_one :location }
  it { should have_one :vpn }
  

  it 'test factory' do 
    user = FactoryGirl.create(:user)
    user.id.should_not be_nil
  end

  describe 'self.find_or_create_from_cas' do 
    before do
      # see controllers/users/omniauth_callbacks_controller.rb for
      # more info about the returned CAS hash
      # 
      @auth_hash = OmniAuth::AuthHash.new({ 
        credentials: OmniAuth::AuthHash.new({ticket: "ST-597571-R2kQzQG5ab0dlxbMqTX7-pldidea42"}), 
        extra: OmniAuth::AuthHash.new({
          attributes: [
            OmniAuth::AuthHash.new({
              email: 'test@example.com',
              firstName: 'first',
              lastName: 'last',
              ssoGuid: 'D8061B53-7B65-450C-B1D4-16299B1GB16E7',
              username: "test@example.com"
            }),
          ], 
          user:"test@example.com"
          }),
        info: OmniAuth::AuthHash::InfoHash.new({}),
        provider: :cas,
        uid: 'test@example.com'
      })
    end
    
    it 'should create new user' do
      expect {
        User.find_or_create_from_cas(@auth_hash)
      }.to change{ User.count }.by(1)
    end

    it 'should create only 1 new user' do 
      expect {
        User.find_or_create_from_cas(@auth_hash)
      }.to change{ User.count }.by(1)

      expect {
        User.find_or_create_from_cas(@auth_hash)
      }.to change{ User.count }.by(0)
    end
  end
end
