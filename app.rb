require 'rubygems'
require 'bundler'

Bundler.require :default, (ENV["RACK_ENV"] || "development").to_sym

set :root, File.dirname(__FILE__)
set :public_folder, './site/_public'
set :static_cache_control, [:public, :max_age => 31557600]


before do
  content_type 'text/html', :charset => 'utf-8'
end

helpers do
  def send_static(path)
    full_path = File.join(settings.public_folder, path)

    if File.exist?(full_path)
      etag Digest::SHA1.hexdigest (full_path + File.size(full_path).to_s + File.mtime(full_path).to_s)
      send_file full_path
    else
      not_found
    end
  end
end

get '/favicon.ico' do
  send_static('favicon.ico')
end

get '/robots.txt' do
  send_static('robots.txt')
end

get '/feed' do
  send_static('feed.xml')
end

get '/' do
  send_static 'index.html'
end

get '/blog/:name' do
  send_static File.join('blog', params[:name].to_s, 'index.html')
end

get '/:name' do
  send_static params[:name].to_s
end

post '/charge' do
  puts params[:email]
end

post '/contact' do
  recipient = 'alec@thesprouts.org'
  email = params[:email]
  body = params[:body]

  Pony.mail(:to => recipient,
    :from => email,
    :subject => "Inquiry via thesprouts.org from #{email}",
    :body => body
    )
end