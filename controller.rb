require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/game')

get '/win/:arg1/:arg2' do
  arg1 = params[:arg1]
  arg2 = params[:arg2]
  game = Game.new(arg1, arg2)
  @game = game.win()
  erb(:result)
end
