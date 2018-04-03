require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    str = params[:string]
    pg = PigLatinizer.new
    @result = pg.piglatinize(str)
    erb :piglatinize
  end
end
