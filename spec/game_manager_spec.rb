require './lib/game_manager'

RSpec.describe GameManager do
  describe '#load' do
    it 'length' do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.load.length).to eq(39)
    end

    it 'creates game object for every row' do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)


      expect(game_manager.games.first).to be_instance_of(Game)
    end
  end

  describe '#highest_total_score' do
    it 'highest_total_score' do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.highest_total_score).to eq(5)
    end
  end

  describe '#lowest_total_score' do
    it 'lowest_total_score' do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.lowest_total_score).to eq(1)
    end
  end
#
  describe '#percentage_home_wins' do
    it "percentage_home_wins" do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.percentage_home_wins).to eq(0.64)
    end
  end
#
  describe '#percentage_visitor_wins' do
    it "percentage_visitor_wins" do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.percentage_visitor_wins).to eq(0.33)
    end
  end
#
  describe '#percentage_ties' do
    it "percentage_ties" do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.percentage_ties).to eq(0.03)
    end
  end
#
  describe '#count_of_games_by_season' do
    it "count_of_games_by_season" do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.count_of_games_by_season).to eq({
        "20122013" => 39
        })
    end
  end
#
  describe '#average_goals_per_game' do
    it "average_goals_per_game" do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.average_goals_per_game).to eq(3.87)
    end
  end
#
  describe '#average_goals_by_season' do
    it "average_goals_by_season" do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.average_goals_by_season).to eq({
        "20122013"=>3.87})
    end
  end

  describe '#seasons' do
    it "makes an array of all seasons" do
      file_path = './data/fixture_games.csv'
      game_manager = GameManager.new(file_path)

      expect(game_manager.seasons).to eq(["20122013"])
    end
  end
#
end
