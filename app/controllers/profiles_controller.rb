class ProfilesController < ApplicationController
  def index
    @profiles = profile.all
  end

  def show
    @profile = profile.find(params[:id])
  end

  def new
    @profile = profile.new
  end

  def create
    @profile = profile.new(profile_params)

    if @profile.save
      redirect_to @profile
    else
      render "new"
    end
  end

  def edit
      @profile = profile.find(params[:id])
  end

  def update
    @profile = profile.find(params[:id])

    if @profile.update_attributes(profile_params)
      redirect_to @profile
    else
      render "edit"
    end
  end

  def destroy 
    @profile = profile.find(params[:id])

    @profile.destroy

    redirect_to profiles_path
  end

  private

  def profile_params
    params.require(:profile).permit(:model, :brand,
    :price, :category, :gender, :frame, :image)
  end
end
