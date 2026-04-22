require "sinatra/base"

class SinatraApp < Sinatra::Application
  get "/" do
    "<h1>Fly me to the moon!</h1>"
  end
end
