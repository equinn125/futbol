require 'CSV'
require 'pry'
class StatTracker

  attr_reader :games, :teams, :game_teams

  def initialize(games, teams, game_teams)
    @games = games
    @teams = teams
    @game_teams = game_teams
  end

  def self.from_csv(file_paths)
    games = CSV.read(file_paths[:games], headers: true, header_converters: :symbol)
    teams = CSV.read(file_paths[:teams], headers: true, header_converters: :symbol)
    game_teams = CSV.read(file_paths[:game_teams], headers: true, header_converters: :symbol)
    StatTracker.new(games, teams, game_teams)
  end

  # Game statistics ------------------------------------------------------------

  def highest_total_scores
    highest = 0
    @games.each do |game|
      sum = game[:away_goals].to_i + game[:home_goals].to_i
      highest = sum if sum > highest
    end
    highest
  end

end
