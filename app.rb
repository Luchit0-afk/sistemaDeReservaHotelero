require './models/init.rb'


class App < Sinatra::Base
  get '/' do
    "Hello World"
  end
end

