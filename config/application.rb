require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ValleysOfDinosaurs
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # config/application.rb

    # existent code ...

    module ValleysOfDinosaurs
      class Application < Rails::Application
        # Some code and comments are here already. Just leave those here, and add these lines
        console do
          ActiveRecord::Base.connection
        end
      end
    end
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
