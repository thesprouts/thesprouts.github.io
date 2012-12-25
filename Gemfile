source :rubygems

gem 'sinatra'
gem 'jekyll'

gem 'pony'       # email for contact form

gem 'dalli'      # memcached client
gem 'rack-cache' # caching for heroku

gem 'nokogiri'   # HTML parsing for lede_filter
gem 'to_regexp'  # safe str => regexp conversion for strip_regex, via http://stackoverflow.com/questions/6669425/convert-a-regular-expression-in-a-string-to-a-regexp-object-in-ruby

gem 'oily_png'   # C extension speeding up chunky_png, via http://compass-style.org/help/tutorials/spriting/

group :production do
  gem 'unicorn'  # concurrency for Heroku, via http://blog.railsonfire.com/2012/05/06/Unicorn-on-Heroku.html
end