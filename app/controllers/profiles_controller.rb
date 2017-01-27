class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update, :new]
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def show
    @profile = Profile.find(params[:id])
  end


  def create
    @profile = current_user.build_profile(profile_params)
    
    if @profile.save
      redirect_to edit_profile_path(@profile), notice: "Profile successfully created"
    else
      render :new, notice: "False"
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update

    if @profile.update(profile_params)
      redirect_to profile_path(@profile), notice: "Profile successfully updated"
    else
      render :editx
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
