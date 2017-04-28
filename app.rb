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
  Word.new({name: word}).save
  @dictionary = Word.all
  redirect '/'
  erb :index
end

get '/definitions/:id' do
  @word = Word.find(params.fetch('id').to_i)
  erb :definitions
end

get '/definitions/:id/added_content' do
  @word = Word.find(params.fetch('id').to_i)
  erb :definitions
end

post '/definitions/:id/added_content' do
  definition = params.fetch('definition')
  @definition = Definition.new({content: definition}).save
  @word = Word.find(params.fetch('word_id').to_i)
  @word.add_definition(@definition)
  redirect '/definitions/:id'
  erb :definitions
end
