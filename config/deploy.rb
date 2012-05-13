set :application, "socialgar"

set :user, "rodolfo1"
set :deploy_to, "/home1/rodolfo1/apps/#{application}"
set :deploy_via, :remote_cache
set :copy_exclude, ["config", "design", ".git", ".gitignore", "readme.md", "Capfile"]
ssh_options[:forward_agent] = true

set :scm, :git
set :repository, "git@bitbucket.org:rodolfocaldeira/socialgar.com.git"

server "socialgar.com", :app, :web, :db, :primary => true
set :use_sudo, false
set :rewrite_base, "/socialgar/"

before "deploy:symlink", "copy_to_prod"

desc "Copies the site to the right place"
task :copy_to_prod do
    puts "#{current_release}"
    run "mv #{current_release}/code/ #{current_release}/public"
    run "rm -fr #{current_release}/code/"
    run "chmod 755 #{current_release}/public/ -R"

    htaccess = <<-EOF
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase #{rewrite_base}
</IfModule>
EOF
    put htaccess, "#{current_release}/public/.htaccess"
    run "chmod 755 #{current_release}/public/.htaccess"
end