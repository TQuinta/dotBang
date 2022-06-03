class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save!
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:description, :credentials, :years_of_experience, :city, :current_role)
  end
end
