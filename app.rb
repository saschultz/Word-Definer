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

get '/words/:id' do
  @word = Word.find(params.fetch('id').to_i)
  @definitions = @word.definitions
  erb :definitions
end

post '/words/:id/content' do
  definition = params.fetch('definition')
  @definition = Definition.new({content: definition}).save
  @word = Word.find(params.fetch('word_id').to_i)
  @word.add_definition(@definition)
  erb :definitions
end
