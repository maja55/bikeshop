class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]
  before_action :authenticate_user!

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to edit_profile_path(@profile), notice: "Profile successfully created"
    else
      render "new"
    end
  end

  def edit
      @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update_attributes(profile_params)
      redirect_to edit_profile_path(@profile), notice: "Profile successfully updated"
    else
      render "edit"
    end
  end

  def destroy
    @profile = Profile.find(params[:id])

    @profile.destroy

    redirect_to profiles_path
  end

  private
  def set_profile
      @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :street_housenr, :postcode, :city, :country)
  end
end
