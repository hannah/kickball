require 'sinatra'
require 'csv'

roster = []

CSV.foreach("lackp_starting_rosters.csv", headers: true) do |row|
  roster << row.to_hash
end


puts roster


get '/' do
  ##@tasks = ['pay bills', 'buy milk', 'learn Ruby']
  ##above was for tasks list - likely should be reflected in index.erb
  erb :index
end
