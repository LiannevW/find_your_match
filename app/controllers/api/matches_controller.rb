class Api::MatchesController < Api::BaseController
  def index
    date_matches = Match.where(date: DateTime.parse(params[:date]))
    current_user_match = nil

    date_matches.each do |match|
      if match.users.include?(@user)
        current_user_match = match
      end
    end

    render status: 200, json: {
      matches: date_matches,
      match: current_user_match
    }.to_json
  end
end
