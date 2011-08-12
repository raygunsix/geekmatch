# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Geekmatch::Application.initialize!

# Load API keys from file
API_KEYS = YAML.load_file("#{RAILS_ROOT}/config/api_keys.yml")[RAILS_ENV]

