# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "sf_capistrano"
set :repo_url, "git@github.com:mentaga-atlas/sf-capistrano.git"

# The path on the remote server where the application will be deployed.
set :deploy_to, "/var/www/#{fetch(:application)}"
set :tmp_dir, "/tmp/capistrano"

# symfony-standard edition directories
set :bin_path, "bin"
set :config_path, "config"
set :var_path, "var"
set :web_path, "public"

# The next settings are lazily evaluated from the above values, so take care
# when modifying them
set :log_path, "var/log"
set :cache_path, "var/cache"

set :symfony_console_path, "bin/console"
set :symfony_console_flags, "--no-debug"

# asset management
set :assets_install_path, "public"
set :assets_install_flags,  '--symlink'

# Share files/directories between releases
set :linked_dirs, ["var/log"]
set :linked_files, []
# To use a .env file:
set :linked_files, [".env"]

# Set correct permissions between releases, this is turned off by default
set :file_permissions_paths, ["var"]
set :permission_method, false

# Role filtering
set :symfony_roles, :all
set :symfony_deploy_roles, :all

# # Add extra environment variables:
# set :default_env, {
#  'APP_ENV': 'prod'
#  'SECRET'; 'foobar'
# }
