require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/nginx'
require 'capistrano/rbenv'
require 'capistrano/puma'
require 'capistrano/puma/nginx'
require 'capistrano/rails/migrations'
require 'capistrano/rails/db'
require 'capistrano/rails/console'
require 'capistrano/upload-config'
require 'sshkit/sudo'

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }


