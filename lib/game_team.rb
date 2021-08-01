class GameTeam
  attr_reader :game_id,
              :team_id,
              :hoa,
              :result,
              :settled_in,
              :head_coach,
              :goals,
              :shots,
              :tackles,
              :pim,
              :powerplayopportunities,
              :powerplaygoals,
              :faceoffwinpercentage,
              :giveaways,
              :takeaways

  def initialize(params)
    @game_id                = params["game_id"]
    @team_id                = params["team_id"]
    @hoa                    = params["HoA"]
    @result                 = params["result"]
    @settled_in             = params["settled_in"]# Not used within existing code put it down
    @head_coach             = params["head_coach"]
    @goals                  = params["goals"].to_i
    @shots                  = params["shots"].to_i
    @tackles                = params["tackles"].to_i
    @pim                    = params["pim"].to_i# Not used within existing code put it down lines 28-33
    @powerplayopportunities = params["powerPlayOpportunities"].to_i
    @powerplaygoals         = params["powerPlayGoals"].to_i
    @faceoffwinpercentage   = params["faceOffWinPercentage"].to_f
    @giveaways              = params["giveaways"].to_i
    @takeaways              = params["takeaways"].to_i
  end
end
