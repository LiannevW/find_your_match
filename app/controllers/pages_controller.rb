class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    if current_user.profile.is_admin
      @users = User.all
    else
      @users = []
    end
  end
end
