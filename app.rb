require "sinatra"

get "/" do
  erb(:index)
end

get "/birthday" do
  "Happy Birthday!"
end
