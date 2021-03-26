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
`RAILS_ENV=production rails assets:precompile`

Restart server
`rails restart`

Other commands
`systemctl {start|stop|restart} rails.service`