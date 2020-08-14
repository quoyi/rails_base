$:.push File.expand_path('lib', __dir__)

require 'rails_base/version'

Gem::Specification.new do |spec|
  spec.name                  = 'rails_base'
  spec.version               = RailsBase::VERSION
  spec.authors               = ['Quo yi']
  spec.email                 = ['beitaz@icloud.com']
  spec.homepage              = 'https://github.com/quoyi/rails_base'
  spec.summary               = '提供用户注册认证、角色管理、组织管理等基础功能。'
  spec.description           = 'Rails 应用基础功能引擎。'
  spec.license               = 'LGPL-3.0'
  spec.required_ruby_version = '>= 2.6.5'

  spec.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'bcrypt', '~> 3.1.7'
  spec.add_dependency 'rails', '~> 6.0.3', '>= 6.0.3.2'

  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'factory_bot_rails'
end
