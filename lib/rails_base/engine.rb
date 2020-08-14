module RailsBase
  class Engine < ::Rails::Engine
    isolate_namespace RailsBase

    config.generators do |g|
      g.test_framework :rspec
    end

    config.generators do |g|
      g.assets false
      g.stylesheets false
      g.helper false
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'

      # g.templates.prepend File.expand_path('lib/templates', RailsBase::Engine.root)
    end
  end
end
