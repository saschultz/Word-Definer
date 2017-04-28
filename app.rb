require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
also_reload 'lib/**/*.rb'

get '/' do
  @dictionary = Word.all
  erb :index
end

post '/dictionary' do
  word = params.fetch('word')
  @word = Word.new({name: word})
  @word.save
  @dictionary = Word.all
  redirect '/'
  erb :index
end

get '/definitions/:id' do
  erb :definitions
end
