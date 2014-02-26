#require 'sinatra'
require 'csv'

@roster = []

CSV.foreach("lackp_starting_rosters.csv", headers: true) do |row|
  @roster << row.to_hash
end

def simpson_players
  @roster.select {|player| player["team"] == "Simpson Slammer"}
end

def jetson_players
  @roster.select {|player| player["team"] == "Jetson Jets"}
end

def flintstone_players
  @roster.select {|player| player["team"] == "Flintstone Fire"}
end

def griffin_players
  @roster.select {|player| player["team"] == "Griffin Goats"}
end

puts griffin_players
