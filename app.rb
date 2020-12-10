require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect to('/plays')
  end

  get '/plays' do
    @player_1_name = session[:player_1]
    @player_2_name = session[:player_2]
    erb(:plays)
  end

  post '/attack' do
    @player_1_name = session[:player_1]
    @player_2_name = session[:player_2]
    erb(:attack)
  end


  run! if app_file == $0
end