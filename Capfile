require "capistrano/setup"

require "capistrano/deploy"
require "capistrano/symfony"
require "capistrano/composer"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
