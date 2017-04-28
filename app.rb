require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/word'
require './lib/definition'

get '/' do
  @dictionary = Word.all
  erb :index
end

post '/dictionary' do
  word = params.fetch('word')
  Word.new({name: word}).save
  @dictionary = Word.all
  erb :index
end

get '/definitions/:id' do
  @definitions = Definition.all
  @word = Word.find(params.fetch('id').to_i)
  erb :definitions
end

post '/definitions/:id/content' do
  definition = params.fetch('definition')
  @definition = Definition.new({content: definition}).save
  @word = Word.find(params.fetch('id').to_i)
  @definitions = Definition.all
  erb :definitions
end
