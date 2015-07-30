require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/rbenv'
require 'capistrano3/unicorn'

set :rbenv_custom_path, '/home/vagrant/.rbenv'
set :rbenv_ruby, '2.1.6'
set :deploy_to, '/home/vagrant/taskapp'
set :scm, :git
set :linked_files, %w(config/secrets.yml)
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
