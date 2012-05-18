# Socialgar.com

Socialgar website.

## Log

### 2013-05-18

Updated the tracking code on the 404 page http://analytics.blogspot.com/2006/09/tip-tracking-404-pages.html

### 2013-05-17

Updated 404 paths. They are now absolute instead of relative. Updated the .htaccess created by the deploy file.

### 2013-05-13

After almost two years of waiting this website is finaly going to see the light of the day.

1. Started by [converting the old repository from mercurial to GIT](http://hivelogic.com/articles/converting-from-mercurial-to-git/)
2. Initialized [Capistrano](http://help.github.com/deploy-with-capistrano/)
	- `capify .`
3. [Railess deploy](https://github.com/leehambley/railsless-deploy/) and [Deploying With Capistrano Without Rails](http://ryanflorence.com/deploying-with-capistrano-without-rails/)
4. Updated the deploy.rb file using Intervir.com.pt
5. Prepated the server for the deployment
	- `cap deploy:setup`
	- `cap deploy` struggled a little bit for some reason it wasn't working
	

	

