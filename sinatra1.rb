require 'sinatra'

enable :sessions

post '/hello' do 
    session[:name] = params[:name]
    'save the name'
end 

get '/greet' do 
    name = session[:name]
    "Hello there, #{name}"
end 
