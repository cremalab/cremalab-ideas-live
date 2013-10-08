require "bundler/capistrano"
require "rvm/capistrano"

load "config/recipes/base"
load "config/recipes/faye"

server "ec2-174-129-178-97.compute-1.amazonaws.com", :web, :app, :db, primary: true

set :application, "cremalab-ideas-live"
set :user, "ubuntu"
set :recipient, "Ruby"
#set :repository,  "git@github.com:cremalab/cremalab-ideas-live.git"
set :repository,  'https://github.com/cremalab/cremalab-ideas-live.git'
set :scm_username, "matao"

set :scm, :git
set :deploy_to,   "/home/#{user}/apps/#{application}"
set :deploy_via,  :remote_cache
set :use_sudo,    false

default_run_options[:pty] = true
ssh_options[:forward_agent] = true
ssh_options[:forward_agent] = true
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "mowens")]



