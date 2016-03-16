# This file is used by Rack-based servers to start the application.

# HACK: Setup environment variables from production env file
`test -f ./.env.production && source ./.env.production`

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
