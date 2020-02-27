require 'sinatra'

enable :sessions


get '/howmany' do 
    erb :howmany
end 

post '/candles' do 
    @number = params[:count].to_i
    erb :candles 
end 