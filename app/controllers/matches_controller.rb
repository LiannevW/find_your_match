class MatchesController < ApplicationController
  def index
    date_matches = Match.where(date: DateTime.parse(params[:date]))
    current_user_match = nil

    date_matches.each do |match|
      if match.users.include?(current_user)
        current_user_match = match
      end
    end

    if (current_user.profile.is_admin)
      @matches = date_matches
    else
      @match = current_user_match
    end
  end
end
  
