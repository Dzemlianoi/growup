require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module GrowupCourses
  class Application < Rails::Application
    config.load_defaults 5.1
    config.active_record.belongs_to_required_by_default = false
    
  end
end
