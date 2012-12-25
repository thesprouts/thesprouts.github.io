require 'rubygems'
require 'bundler'

Bundler.require :default, (ENV["RACK_ENV"] || "development").to_sym

set :public_folder, './site/_public'

helpers do
  def send_static(path)
    puts "Looking for " + File.join(settings.public_folder, path)
    send_file File.join(settings.public_folder, path)
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
  send_static params[:name].to_s +  '.html'
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