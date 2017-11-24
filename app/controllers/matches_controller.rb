require_relative '../models/algorithm'

class MatchesController < ApplicationController
  def index

    date_from_params = DateTime.parse(params[:date])
    #google how to get in ruby day of the week
    #you will have variable that  has day of the week
    users_set = []
    User.all.each do |user|
      if user.profile.is_admin == false
        users_set.push(user)
      end
    end

    date_matches = Match.where(date: date_from_params)
    date_number = date_from_params.cwday
    if date_matches.length == 0
          # run algorithm that returns matches
          algoritmer = Algorithm.new
          algoritmer.create_days(date_number, users_set)
          pairs = algoritmer.create_pairs_for_one_day()
          date_matches = []
          pairs.each do |generated_pair|
            date_matches.push(Match.new(date: date_from_params, users: generated_pair))
          end
        end

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
