require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect to('/plays')
  end

  get '/plays' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:plays)
  end

  post '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:attack)
  end


  run! if app_file == $0
end