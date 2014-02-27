require 'sinatra'
require 'csv'
require 'pry'

get '/:team_name' do
  @players = []
  @team_name = params[:team_name]
  CSV.foreach("lackp_starting_rosters.csv", headers: true) do |row|
    if row["team"] == params[:team_name]
      @players << row.to_hash
    end
  end
  erb :index
end

set :public_folder, File.dirname(__FILE__) + '/public'
set :views_folder, File.dirname(__FILE__) + '/views'
