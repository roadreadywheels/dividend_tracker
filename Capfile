require 'capistrano/setup'
require 'capistrano/deploy'
require "capistrano/scm/git"
require 'capistrano/puma'
require 'capistrano/puma/nginx'
require 'capistrano/rails/migrations'
require 'capistrano/rails/db'
require 'capistrano/rails/console'
require 'sshkit/sudo'
require 'capistrano/rbenv'

install_plugin Capistrano::SCM::Git


Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
