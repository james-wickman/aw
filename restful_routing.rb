Ummm...your routes shouldn't look like that.

rails aborted!
Gem::LoadError: Specified 'sqlite3' for database adapter, but the gem is not loaded. Add `gem 'sqlite3'` to your Gemfile (and ensure its version is at the minimum required by ActiveRecord).
/repositories/aw/config/routes.rb:20:in `block in <top (required)>'
/repositories/aw/config/routes.rb:1:in `<top (required)>'
/repositories/aw/config/environment.rb:5:in `<top (required)>'
bin/rails:3:in `load'
bin/rails:3:in `<main>'
Gem::LoadError: sqlite3 is not part of the bundle. Add it to Gemfile.
/repositories/aw/config/routes.rb:20:in `block in <top (required)>'
/repositories/aw/config/routes.rb:1:in `<top (required)>'
/repositories/aw/config/environment.rb:5:in `<top (required)>'

Run `rails routes` in the terminal if you want the full error.