# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server
require 'rack/cors'
use Rack::Cors do

 # allow all origins in development
 #added this to remove the cors error in the render app
 allow do
   origins '*'
   resource '*',
       :headers => :any,
       :methods => [:get, :post, :delete, :put, :options]
 end
end