# Setup

Update to latest code:
`git pull`


Install gems:
`bundle install`

Setup database
- `rake db:setup`
- `rake db:migrate`
- `rake db:seed`


Yarn:
`yarn`

Compile assets
`rake webpacker:info RAILS_ENV=production`
`rake webpacker:clean RAILS_ENV=production`
`rake webpacker:compile RAILS_ENV=production`

Old:
`RAILS_ENV=production rails assets:precompile`

Restart server
`rails restart`

Other commands
`systemctl {start|stop|restart} rails.service`
