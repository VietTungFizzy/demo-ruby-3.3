require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "sinatra", require: false
  gem "thin"
  gem "rackup"
  gem "puma"
end

require "sinatra"

get "/user/:usesrname" do |block_un|
  [
    "<p>Hello, #{params["usesrname"]}</p>",
    "<p>#{block_un} has the same value</p>"
  ]
end
