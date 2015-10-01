# Homepage (Root path)
helpers do
  def current_user
    @current_user = User.find_by(id: session[user_id]) if session[:user_id]
  end 
end 

get '/index' do
  erb :index
end

get '/login' do
  erb :login
end

post '/login' do
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)
  if user.password = password
    session[:user_id] = user.id
    redirect '/index'
  else
    redirect '/'
  end
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
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)
  if user
    redirect '/'
  else
    user = User.create(username: username, password: password)
    session[:user_id] = user.id
    redirect '/index'
  end

end

get '/profile' do
end

#get '/alcohol' do
 # @alcohols = ['beer', 'wine', 'cocktails', 'vodka', 'scotch']
  #erb :alcohol 
#end
