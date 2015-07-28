set :application, 'taskapp'
set :repo_url, 'https://github.com/yhoshino11/taskapp.git'
set :branch, 'master'

set :deploy_to, '/home/vagrant/taskapp'
set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/assets')

set :keep_releases, 1
set :rbenv_type, :user
set :rails_env, 'production'
set :rbenv_ruby, '2.1.6'
set :rbenv_map_bins, %w(rake gem bundle ruby rails)
set :rbenv_roles, :all
