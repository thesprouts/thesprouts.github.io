require './app'

use Rack::Deflater # adding gzip


run Sinatra::Application