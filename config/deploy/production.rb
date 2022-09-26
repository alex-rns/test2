server '157.230.104.188', user: "#{fetch(:user)}", roles: %w{app db web}, primary: true

set :application, 'app name'
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :environment, 'production'
set :rails_env,   'production'

set :nginx_server_name, '157.230.104.188'
set :puma_conf, "#{shared_path}/config/puma.rb"