set :stage, :production
set :rails_env, 'production'
key_path = '~/.ssh/taskapp'
server '192.168.179.11', roles: %w(web app db),
                         user: 'vagrant',
                         ssh_options: {
                           user: 'vagrant',
                           keys: key_path,
                           auth_methods: %w(publickey)
                         }

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
