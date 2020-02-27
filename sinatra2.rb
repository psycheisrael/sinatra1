require 'sinatra'
require 'sqlite3'
if File.exists?("maindata.db")
  File.delete("maindata.db")
end

db = SQLite3::Database.new("maindata.db")

get '/' do 
    @users = db.execute ("SELECT * FROM users")
    erb :results 
end 

post '/create' do 
    db.execute("INSER INTO users(email, pass) VALUES(?,?)",[params[:email], params[:pass]])
    redirect '/'
end 