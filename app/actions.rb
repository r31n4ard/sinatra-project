# Homepage (Root path)
get '/' do
  erb :index
end

get '/login' do
  erb :login
end

post 'login' do
  #todo
  redirect '/'
end

get '/logout' do
  erb :login
end

post 'logout' do
  #todo
  redirect '/'
end

get '/signup' do
 erb :signup
end

post '/signup' do
  #todo take the data from the form and put in db
  #maybe run some validations
  redirect '/'
end

get '/profile' do
end

#get '/alcohol' do
 # @alcohols = ['beer', 'wine', 'cocktails', 'vodka', 'scotch']
  #erb :alcohol 
#end
