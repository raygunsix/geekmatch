# Load API keys from file
API_KEYS = YAML.load_file("#{RAILS_ROOT}/config/api_keys.yml")[RAILS_ENV]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, API_KEYS['twitter_key'], API_KEYS['twitter_secret']
end