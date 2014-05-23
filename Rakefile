site_root = './site/'
STDOUT.sync = true
STDERR.sync = true

desc "Compile static site with jekyll"
task :compile do
  puts 'Beginning compilation. . .'
  Dir.chdir File.expand_path('./site', File.dirname(__FILE__)) do
    puts `jekyll build`
  end
  puts '. . .compilation complete.'
  puts '==='
  puts 'Now you can execute `bundle exec rackup -s thin` to test locally on port 9292'
end

require 'sitemap_generator/tasks'

desc "Ping search engines to notify them of new site[map]"
task :ping do
  puts "Pinging Google, Bing, SitemapWriter. . ."
  SitemapGenerator::Sitemap.ping_search_engines # called for you when you use the rake task
end