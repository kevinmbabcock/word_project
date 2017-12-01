require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

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
