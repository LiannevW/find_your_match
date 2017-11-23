class ProfilesController < ApplicationController
before_action :authenticate_user!

def index
  @profiles = Profile.all
end

 def new
   @profile = Profile.new
 end

 def create
   @profile = current_user.build_profile(profile_params)

   if @profile.save
     redirect_to edit_profile_path(@profile), notice: "Profile successfully created"
   else
     render :new
   end
 end

 def edit
   @profile = Profile.find(params[:id])
 end

 def update
   profile = Profile.find(params[:id])
   if profile.update(profile_params)
     redirect_to root_path, notice: "Profile successfully updated"
   else
     render :edit
   end
 end

 private

   def profile_params
     params.require(:profile).permit(:first_name, :last_name, :is_admin)
   end
end
