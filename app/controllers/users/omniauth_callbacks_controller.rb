class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def cas
    # more explanation about the CAS auth setup
    # 
    # 
    # omniauth provides access to the CAS session info in the 
    # request.env["omniauth.auth"] env key/value pair. EG,
    #   puts request.env["omniauth.auth"].inspect
    #   # => #<OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash ticket="ST-597571-R2kQzQG5ab0dlxbMqTX7-pldidea42"> extra=#<OmniAuth::AuthHash attributes=[#<OmniAuth::AuthHash email="test@example.com" firstName="first" lastName="last" ssoGuid="D8061B53-7B65-450C-B1D4-16299B1GB16E7" username="test@example.com">] user="test@example.com"> info=#<OmniAuth::AuthHash::InfoHash> provider=:cas uid="test@example.com">
    # 
    # which is also (indented, no change) this,
    # 
    # <OmniAuth::AuthHash 
    #   credentials=#<OmniAuth::AuthHash ticket="ST-597571-R2kQzQG5ab0dlxbMqTX7-pldidea42"> 
    #   extra=#<OmniAuth::AuthHash 
    #     attributes=[
    #       #<OmniAuth::AuthHash 
    #         email="test@example.com" 
    #         firstName="first" 
    #         lastName="last" 
    #         ssoGuid="D8061B53-7B65-450C-B1D4-16299B1GB16E7" 
    #         username="test@example.com"
    #       >
    #     ] 
    #     user="test@example.com"
    #   > 
    #   info=#<OmniAuth::AuthHash::InfoHash> 
    #   provider=:cas 
    #   uid="test@example.com"
    # >
    

    # find or create user
    @user = User.find_or_create_from_cas(auth_hash)
    
    # manually sign user in
    sign_in_and_redirect @user
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end