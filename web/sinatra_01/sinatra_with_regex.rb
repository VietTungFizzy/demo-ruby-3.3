require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "sinatra", require: false
  gem "thin"
  gem "rackup"
  gem "puma"
end

require "sinatra"

get %r{/user/(\w+)} do |capture|
  [
    "<p>Hello, #{params["captures"].first}</p>",
    "<p>#{capture} has the same value</p>"
  ]
end
