set :use_sudo,            false
set :git_shallow_clone,   1
set :keep_releases,       5
set :application,         "n1r"
set :user,                "deployer"
set :password,            "deployer"
set :deploy_to,           "/home/deployer/n1r"
set :runner,              "deployer"
set :repository,          "git@github.com:fortesinformatica/n1r.git"
set :scm,                 :git

ssh_options[:paranoid]    = false
default_run_options[:pty] = true

role :app, "localhost"
role :web, "localhost"
role :db,  "localhost", :primary => true

namespace :deploy do

  task :start do
    sudo "/etc/init.d/unicorn start"
  end

  task :stop do
    sudo "/etc/init.d/unicorn stop"
  end

  task :restart do
    sudo "/etc/init.d/unicorn reload"
  end

end

