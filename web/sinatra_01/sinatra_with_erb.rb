require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "sinatra", require: false
  gem "thin"
  gem "rackup"
  gem "puma"
end

require "sinatra"

get "/" do
  erb(:root)
end 
