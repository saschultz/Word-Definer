require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/word'
require './lib/definition'

get '/' do
  @dictionary = Word.all
  erb :index
end

get '/clear' do
  Word.clear
  redirect '/'
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
  erb :definitions
end

post '/words/definitions' do
  definition = params.fetch('definition')
  @word = Word.find(params.fetch('word_id').to_i)
  @word.add_definition(Definition.new({content: definition}))
  erb :definitions
end
