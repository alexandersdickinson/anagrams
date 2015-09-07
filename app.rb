require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  @header = 'Words and Possible Anagrams'
  erb(:form)
end

get('/output') do
  @header = 'Your Anagrams:'
  @result1 = params.fetch('master').anagrams(params.fetch('comp1'))
  @result2 = params.fetch('master').anagrams(params.fetch('comp2'))
  @result3 = params.fetch('master').anagrams(params.fetch('comp3'))
  erb(:output)
end