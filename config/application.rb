require File.expand_path('../boot', __FILE__)
require 'rails/all'

# Requires all the lib/folders
# require '../lib/auth_token'
# require '../lib/errors'
# config.autoload_paths += %W(#{config.root}/lib)
# config.autoload_paths += Dir["#{config.root}/lib/**/"]

# dotenv files
require 'dotenv'
Dotenv.load
require "active_record/railtie"
#  end =====

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# CORS middleware
module Traverse
  class Application < Rails::Application

 config.app_generators.scaffold_controller :responders_controller
    config.active_record.raise_in_transactional_callbacks = true

    config.middleware.insert_before 0, "Rack::Cors", :debug => true, :logger => (-> { Rails.logger }) do
      allow do
        origins '*'
        resource '*',
          :headers => :any,
          :methods => [:get, :post, :delete, :put, :options, :head],
          :credentials => true,
          :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client']

      end
    end

  end
end
