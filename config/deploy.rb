set :application, 'taskapp'
set :repo_url, 'https://github.com/yhoshino11/taskapp.git'
set :branch, 'develop'
set :deploy_to, '/home/vagrant/taskapp'

set :keep_releases, 1
set :rbenv_type, :user
set :rails_env, 'production'
set :rbenv_ruby, '2.1.6'
set :rbenv_map_bins, %w(rake gem bundle ruby rails)
set :rbenv_roles, :all
set :linked_dirs, %w(bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/assets config/secrets.yml)

set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }
set :unicorn_config_path, 'config/unicorn.rb'
set :unicorn_rack_env, 'production'
