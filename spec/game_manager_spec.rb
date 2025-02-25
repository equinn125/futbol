require_relative 'spec_helper'

RSpec.describe GameManager do
  before(:each) do
    file_path = './data/fixture_games.csv'
    @game_manager = GameManager.new(file_path)
  end

  describe '#initialize' do
    it 'exists and has attributes' do
      expect(@game_manager).to be_instance_of(GameManager)
      expect(@game_manager.games.length).to eq(39)
    end

    it 'creates game object for every row' do
      expect(@game_manager.games.first).to be_instance_of(Game)
    end
  end

  describe '#total_goals_by_game(game)' do
    it 'adds home and away goals' do
      game = @game_manager.games.first

      expect(@game_manager.total_goals_by_game(game)).to eq(5)
    end
  end

  describe '#highest_total_score' do
    it 'highest_total_score' do
      expect(@game_manager.highest_total_score).to eq(5)
    end
  end

  describe '#lowest_total_score' do
    it 'lowest_total_score' do
      expect(@game_manager.lowest_total_score).to eq(1)
    end
  end

  describe '#find_percent' do
    it 'find_percent' do
      file_path = './data/fixture_games.csv'
      @game_manager = GameManager.new(file_path)
      numerator   = 50
      denominator = 100

      expect(@game_manager.find_percent(numerator, denominator)).to eq(0.50)
    end
  end

  describe '#home_wins_count' do
    it 'home_wins_count' do
      expect(@game_manager.home_wins_count).to eq(25)
    end
  end

  describe '#visitor_wins_count' do
    it 'visitor_wins_count' do
      expect(@game_manager.visitor_wins_count).to eq(13)
    end
  end

  describe '#ties_count' do
    it 'ties_count' do
      expect(@game_manager.ties_count).to eq(1)
    end
  end

  describe '#percentage_home_wins' do
    it "percentage_home_wins" do
      expect(@game_manager.percentage_home_wins).to eq(0.64)
    end
  end

  describe '#percentage_visitor_wins' do
    it "percentage_visitor_wins" do
      expect(@game_manager.percentage_visitor_wins).to eq(0.33)
    end
  end

  describe '#percentage_ties' do
    it "percentage_ties" do
      expect(@game_manager.percentage_ties).to eq(0.03)
    end
  end

  describe '#count_of_games_by_season' do
    it "count_of_games_by_season" do
      expect(@game_manager.count_of_games_by_season).to eq({"20122013" => 39})
    end
  end

  describe '#total_goals' do
    it "counts all goals in @games" do
      expect(@game_manager.total_goals).to eq(151)
    end
  end

  describe '#average_goals_per_game' do
    it "average_goals_per_game" do
      expect(@game_manager.average_goals_per_game).to eq(3.87)
    end
  end

  describe '#games_and_goals_per_season' do
    it "groups games and goals by season" do
      expect(@game_manager.games_and_goals_per_season).to eq({"20122013"=>{"games"=>39, "goals"=>151}})
    end
  end

  describe '#average_goals_per_season' do
    it "average_goals_per_season" do
      expect(@game_manager.average_goals_per_season).to eq({"20122013"=>3.87})
    end
  end

  describe '#seasons' do
    it "makes an array of all seasons" do
      expect(@game_manager.seasons).to eq(["20122013"])
    end
  end

  describe '#game_ids_by_season(season_id)' do
    it 'does that' do
      expect(@game_manager.game_ids_by_season("20122013").first).to eq("2012030221")
    end
  end

  describe '#games_and_wins_by_team(team_id)' do
    it "can return the best season for a team by highest win percentage" do
      expect(@game_manager.games_and_wins_by_team("3")).to eq({"20122013"=>{:total_games=>5, :total_wins=>0}})
    end
  end

  describe '#best_season' do
    it "can return the best season for a team by highest win percentage" do
      expect(@game_manager.best_season("6")).to eq("20122013")
    end
  end

  describe '#worst_season' do
    it "can return the best season for a team by highest win percentage" do
      expect(@game_manager.worst_season("6")).to eq("20122013")
    end
  end
end
