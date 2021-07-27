require_relative 'spec_helper'
require './lib/stat_tracker'
# require './data/games'
# require './data/teams'
# require './data/game_teams'

RSpec.describe StatTracker do

  it 'initializes an instance of itself' do
    game_path = './data/games.csv'
    team_path = './data/teams.csv'
    game_teams_path = './data/game_teams.csv'

    file_paths = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }

    stat_tracker = StatTracker.from_csv(file_paths)

    expect(stat_tracker).to be_instance_of(StatTracker)
  end

  it 'has attributes' do
    stat_tracker = StatTracker.new(:dog, :bird, :aircraft_carrier)

    expect(stat_tracker.games).to eq(:dog)
    expect(stat_tracker.teams).to eq(:bird)
    expect(stat_tracker.game_teams).to eq(:aircraft_carrier)
  end

  it 'can open readable CSV' do
    game_path = './data/games.csv'
    team_path = './data/teams.csv'
    game_teams_path = './data/game_teams.csv'

    file_paths = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }

    stat_tracker = StatTracker.from_csv(file_paths)

    expect(stat_tracker.games).to be_a(CSV::Table)
    expect(stat_tracker.teams).to be_a(CSV::Table)
    expect(stat_tracker.game_teams).to be_a(CSV::Table)
  end
end
