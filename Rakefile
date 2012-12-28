site_root = './site/'
STDOUT.sync = true
STDERR.sync = true

desc "Compile static site with jekyll"
task :compile do
  puts 'Beginning compilation. . .'
  Dir.chdir File.expand_path('./site', File.dirname(__FILE__)) do
    puts `jekyll`
  end
  puts '. . .compilation complete.'
  puts '==='
  puts 'Now you can execute `bundle exec rackup -s thin` to test locally on port 9292'
end