require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Drinks
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Remove field_with_errors wrapper when form validation fails:
    # https://gist.github.com/ehsanatwork/6dd0c65e290ee505a103a62ad24b3675
    #
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      html_tag.html_safe
    end
  end
end
