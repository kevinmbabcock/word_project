require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list = Word.all()
  erb(:index)
end

post('/') do
  name = params["addWord"]
  new_word = Word.new({:name => name})
  new_word.save()
  # binding.pry
  @list = Word.all()
  erb(:index)
end

get ('/word/:id') do
  @word = Word.find(params[:id])

  erb(:word)
end
