Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas, name: 'relay', host: 'signin.relaysso.org/cas'
end