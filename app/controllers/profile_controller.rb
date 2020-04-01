class ProfileController < ApplicationController
  before_action :authenticate_user!, only: [:follow, :unfollow]
  before_action :set_user, only: [:show, :follow, :unfollow]
  before_action :prevent_self_follow, only: [:follow, :unfollow]
  def show
    @posts = Post.includes(:user).where(user_id: params[:id])
  end

  def follow
    current_user.follow!(@user)
    redirect_back(fallback_location: root_path)
end

def unfollow
    current_user.unfollow!(@user)
    redirect_back(fallback_location: root_path)
end

private
  def set_user
    @user = User.find(params[:id])
  end

  def prevent_self_follow
    redirect_to root_path, notice: "You can't do that." if @user == current_user
  end
end
