get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end

get '/logout' do
  session.clear
  erb :index
end

post '/signup' do
  user = params[:user]
  @user = User.create(first_name: user[:first_name], last_name: user[:last_name],
    email: user[:email], birthdate: user[:birthdate], password: user[:password],
     password_confirmation: user[:password_confirmation])

  session[:user] = @user.id
  p session
  redirect to '/'
end

post '/login' do
  user = params[:user]
  @user = User.find_by_email(user[:email])
  if @user && @user.authenticate(user[:password])
    session[:user_id] = @user.id
  end

  redirect to '/'
end
