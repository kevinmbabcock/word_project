require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list = Word.all
  erb(:index)
end

post('/') do
  name = params["addWord"]
  new_word = Word.new({:name => name})
  new_word.save
  @list = Word.all
  erb(:index)
end

get ('/word/:id') do
  @word = Word.find(params[:id].to_i)
  erb(:word)
end

post('/word/:id') do
  new_definition = params["addDefiniton"]
  # binding.pry
  @word = Word.find(params[:id].to_i)
  @word.definitions.push(new_definition)
  # binding.pry
  erb(:word)
end
