$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ecm/videos/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ecm_videos'
  s.version     = Ecm::Videos::VERSION
  s.authors     = ['Roberto Vasquez Angel']
  s.email       = ['roberto@vasquez-angel.de']
  s.homepage    = 'https://github.com/robotex82/ecm_videos'
  s.summary     = 'Ecm::Videos.'
  s.description = 'Ecm::Videos Module.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails'
  s.add_dependency 'acts_as_list'
  s.add_dependency 'acts_as_published'
  s.add_dependency 'haml-rails'
  s.add_dependency 'paperclip'
  s.add_dependency 'paperclip-av-transcoder'
  s.add_dependency 'rails_rad'
  s.add_dependency 'resource_renderer'
  s.add_dependency 'RedCloth'
end
