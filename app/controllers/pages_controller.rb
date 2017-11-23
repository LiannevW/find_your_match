class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    if current_user.is_admin
      @users = User.all
      @matches = Match.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    else
      matches = Match.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
      matches.each do |match|
        if match.users.include?(current_user)
          @match = match
      end
    end
  end
end
end
