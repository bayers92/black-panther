set :application, "black_panther"
set :repository,  "https://github.com/bayers92/black-panther"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git
set :deploy_to, "/home/onefortyco/webapps/oneforty"


role :app, "web440.webfaction.com"
role :web, "web440.webfaction.com"
role :db,  "web440.webfaction.com", :primary => true

set :user, "onefortyco"
set :scm_username, "bayers92"
set :use_sudo, false
default_run_options[:pty] = true

namespace :deploy do
  desc "Restart nginx"
  task :restart do
    run "#{deploy_to}/bin/restart"
  end
end