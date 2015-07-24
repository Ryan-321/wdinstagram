require "bundler/setup"

require "sinatra"
require "sinatra/reloader"
require "pry"
require "active_record"

require_relative "db/connection"
require_relative "models/wdi_instagram"
# require_relative "controllers/welcome"
require_relative "controllers/instagram"

get '/' do
  erb :welcome
end
