require "sinatra/base"

class BirthdayApp < Sinatra::Base

get "/" do
  erb(:index)
end

get "/birthday" do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  p params
  erb(:play)
end
end
