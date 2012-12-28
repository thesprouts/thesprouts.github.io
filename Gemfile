source :rubygems

gem 'sinatra'
gem 'jekyll', '0.12.0' # need 0.12.0 for include: functionality
gem 'pony'             # email for contact, donation form
gem 'closure-compiler' # compression for jekyll-asset-pipeline
gem 'rubypants'        # smarty-pants gem for typography


group :production do
  gem 'unicorn'  # concurrency for Heroku, via http://blog.railsonfire.com/2012/05/06/Unicorn-on-Heroku.html
end


group :development do
  gem 'thin'                  # re: speed, WARN re: content length, preferred > WEBrick
  gem 'sinatra-reloader'      # auto-reload upon filechange
  
  gem 'nokogiri'              # HTML parsing for lede_filter
  gem 'to_regexp'             # safe str => regexp conversion for strip_regex, via http://stackoverflow.com/questions/6669425/convert-a-regular-expression-in-a-string-to-a-regexp-object-in-ruby

  gem 'compass'               # for sprite generation, scss
  gem 'oily_png'              # C extension speeding up chunky_png, via http://compass-style.org/help/tutorials/spriting/

  gem 'jekyll-asset-pipeline' # asset packaging, minification
end