get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/index' do
  # Look in app/views/index.erb
  erb :index
end

get '/login' do
  # Look in app/views/index.erb
  erb :login
end

get '/post/:post_id' do
  # Look in app/views/index.erb
  erb :index
end

get '/profile/:user_id' do
  # Look in app/views/index.erb
  erb :index
end

get '/submissions/:user_id' do
  # Look in app/views/index.erb
  erb :index
end

get '/comments/:user_id' do
  # Look in app/views/index.erb
  erb :index
end

# ============ POSTS ===============
post '/login' do
  # => Include functionality to authenticate and set sessions token
  session[:id] = User.find_by_usernameUser.authenticate(params[:username], params[:password]) ? erb :index : erb :login
  
end

