require "bundler/inline"

gemfile do
  source "https://rubygems.org"

  gem "rack"
  gem "rackup"
  gem 'webrick', '~> 1.8', '>= 1.8.1'
end

run do |env|
  [200, { "content-type" => "text/plain" }, ["Welcome to Rack"]]
end
