source "https://rubygems.org"

gem 'sinatra'
gem 'pony'             # email for contact, donation form
gem 'rubypants'        # smarty-pants gem for typography (TODO: why does this need to be out of :development?)
gem 'sitemap_generator'# needed in default for rake :ping task

group :production do
  gem 'unicorn'  # concurrency for Heroku, via http://blog.railsonfire.com/2012/05/06/Unicorn-on-Heroku.html
end


group :development do
  gem 'jekyll'
  gem 'closure-compiler' # JS compression for jekyll-asset-pipeline
  gem 'yui-compressor'   # CSS compression for jekyll-asset-pipeline

  gem 'thin'                  # re: speed, WARN re: content length, preferred > WEBrick
  gem 'sinatra-reloader'      # auto-reload upon filechange

  gem 'nokogiri'              # HTML parsing for lede_filter
  gem 'to_regexp'             # safe str => regexp conversion for strip_regex, via http://stackoverflow.com/questions/6669425/convert-a-regular-expression-in-a-string-to-a-regexp-object-in-ruby

  gem 'compass'               # for sprite generation, scss
  gem 'oily_png'              # C extension speeding up chunky_png, via http://compass-style.org/help/tutorials/spriting/

  gem 'jekyll-asset-pipeline' # asset packaging, minification
end