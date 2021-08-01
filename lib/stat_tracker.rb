require 'CSV'
require_relative './game_manager'
require_relative './team_manager'
require_relative './game_team_manager'
require_relative './season_manager'

class StatTracker
  attr_reader :game_manager,
              :team_manager,
              :game_team_manager,
              :season_manager

  def initialize(file_paths) # ARE WE BREAKING LAW OF DEMETER?
    @game_manager      = GameManager.new(file_paths[:games])
    @team_manager      = TeamManager.new(file_paths[:teams])
    @game_team_manager = GameTeamManager.new(file_paths[:game_teams])
    @season_manager    = SeasonManager.new(@game_manager.seasons, @game_manager.games, @game_team_manager.game_teams)
  end

  def self.from_csv(file_paths)
    StatTracker.new(file_paths)
  end

  def highest_total_score
    game_manager.highest_total_score
  end

  def lowest_total_score
    game_manager.lowest_total_score
  end

  def percentage_home_wins
    game_manager.percentage_home_wins
  end

  def percentage_visitor_wins
    game_manager.percentage_visitor_wins
  end

  def percentage_ties
    game_manager.percentage_ties
  end

  def count_of_games_by_season
    game_manager.count_of_games_by_season
  end

  def average_goals_per_game
    game_manager.average_goals_per_game
  end

  def average_goals_by_season
    game_manager.average_goals_per_season
  end

  def count_of_teams
    team_manager.count_of_teams
  end

  def best_offense
    teams_by_id = team_manager.teams_by_id
    game_team_manager.best_offense(teams_by_id)
  end

  def worst_offense
    teams_by_id = team_manager.teams_by_id
    game_team_manager.worst_offense(teams_by_id)
  end

  def highest_scoring_visitor
    teams_by_id = team_manager.teams_by_id
    game_team_manager.highest_scoring_visitor(teams_by_id)
  end

  def highest_scoring_home_team
    teams_by_id = team_manager.teams_by_id
    game_team_manager.highest_scoring_home_team(teams_by_id)
  end

  def lowest_scoring_visitor
    teams_by_id = team_manager.teams_by_id
    game_team_manager.lowest_scoring_visitor(teams_by_id)
  end

  def lowest_scoring_home_team
    teams_by_id = team_manager.teams_by_id
    game_team_manager.lowest_scoring_home_team(teams_by_id)
  end

  def team_info(team_id)
    team_manager.team_info(team_id)
  end
#not working yet
  def best_season(team_id)
    season_manager.best_season(team_id)
  end
  #not working yet
  def worst_season(team_id)
    season_manager.worst_season(team_id)
  end

  def average_win_percentage(team_id)
    game_team_manager.average_win_percentage(team_id)
  end

  def most_goals_scored(team_id)
    game_team_manager.most_goals_scored(team_id)
  end

  def fewest_goals_scored(team_id)
    game_team_manager.fewest_goals_scored(team_id)
  end

  def favorite_opponent(team_id)
    id = game_team_manager.favorite_opponent(team_id)
    team_manager.team_info(id)["team_name"]
  end

  def rival(team_id)
    id = game_team_manager.rival(team_id)
    team_manager.team_info(id)["team_name"]
  end

  # This isn't working yet.
  def winningest_coach(season)
    season_manager.winningest_coach(season)
  end
#not working
  def worst_coach(season)
    season_manager.worst_coach(season)
  end
  #not working
  def most_accurate_team(season_id)
    teams_by_id = team_manager.teams_by_id
    season_manager.most_accurate_team(season_id, teams_by_id)
  end
  #not working
  def least_accurate_team(season_id)
    teams_by_id = team_manager.teams_by_id
    season_manager.least_accurate_team(season_id, teams_by_id)
  end

  def most_tackles(season_id)
    teams_by_id = team_manager.teams_by_id
    season_manager.most_tackles(season_id, teams_by_id)
  end

  def fewest_tackles(season_id)
    teams_by_id = team_manager.teams_by_id
    season_manager.fewest_tackles(season_id, teams_by_id)
  end
end






# games = CSV.read(file_paths[:games], headers: true, header_converters: :symbol)
# teams = CSV.read(file_paths[:teams], headers: true, header_converters: :symbol)
# game_teams = CSV.read(file_paths[:game_teams], headers: true, header_converters: :symbol)
# StatTracker.new(games, teams, game_teams)
