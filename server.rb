require 'sinatra'

get '/' do
  ##@tasks = ['pay bills', 'buy milk', 'learn Ruby']
  ##above was for tasks list - likely should be reflected in index.erb
  erb :index
end
