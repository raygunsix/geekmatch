# Load the rails application
require File.expand_path('../application', __FILE__)

# Load env vars from local file
local_env = File.join(::Rails.root.to_s, 'config', 'local_env.rb')
load(local_env) if File.exists?(local_env)

# Initialize the rails application
Geekmatch::Application.initialize!

