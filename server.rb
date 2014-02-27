require 'sinatra'
require 'csv'

get '/Simpson_Slammers' do
  @simpsons = []
  CSV.foreach("lackp_starting_rosters.csv", headers: true) do |row|
    if row["team"] == "Simpson Slammers"
      @simpsons << row.to_hash
    end
  end
  @simpsons
end

# get '/Jetson_Jets' do
#   @jetsons = []
#   CSV.foreach("lackp_starting_rosters.csv", headers: true) do |row|
#     @roster << row.to_hash
#   end
# end

# get '/Flinstone_Fire' do
#   @flintstones = []
#   CSV.foreach("lackp_starting_rosters.csv", headers: true) do |row|
#     @roster << row.to_hash
#   end
# end

# get '/Griffin_Goats' do
#   @griffin = []
#   CSV.foreach("lackp_starting_rosters.csv", headers: true) do |row|
#     @roster << row.to_hash
#   end
# end

# def simpson_players
#   @roster.select {|player| player["team"] == "Simpson Slammers"}
# end

# def jetson_players
#   @roster.select {|player| player["team"] == "Jetson Jets"}
# end

# def flintstone_players
#   @roster.select {|player| player["team"] == "Flintstone Fire"}
# end

# def griffin_players
#   @roster.select {|player| player["team"] == "Griffin Goats"}
# end
