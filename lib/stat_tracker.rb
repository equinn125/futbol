require 'CSV'
require 'pry'
require_relative 'game_statistics'
require_relative 'season_stats'
require_relative 'league_statistics'
class StatTracker
  include GameStatistics
  include SeasonStats
  include LeagueStatistics

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

end
