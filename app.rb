require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/rocky6'

get('/') do
  @description = "Hi Jared!!! Welcome to another beautiful Monday at Epicodus"
  erb(:input)
end

get('/play') do
  # binding.pry
  game = RPS.new()
  p1 = params.fetch('gesture1')
  p2 = params.fetch('gesture2')
  @result = game.winner_calc?(p1, p2)

  erb(:output)

end
