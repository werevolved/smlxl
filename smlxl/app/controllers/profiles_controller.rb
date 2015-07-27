class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to current_user.profile
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def show
    set_profile
    # params[:id]
    @posts = @profile.user.posts
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profiles_path, notice: 'Profile was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profiles_path, notice: 'Profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:username, :first_name, :last_name, :country, :avatar)
    end
end