set :stage, :production
set :rails_env, 'production'
set :default_env, 'SECRET_KEY_BASE' => ENV['SECRET_KEY_BASE']
key_path = '~/.ssh/taskapp'
server '127.0.0.1', port: 2201,
                    roles: %w(web app db),
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
